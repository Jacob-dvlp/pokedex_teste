sealed class ResultState<TError, TResult> {
  const ResultState();

  bool isSuccess() => this is IsResult<TError, TResult>;

  bool isError() => this is IsError<TError, TResult>;

  TResult getOrElse(TResult Function() defaultValue) {
    return this is IsResult<TError, TResult> ? (this as IsResult<TError, TResult>).value : defaultValue();
  }

  T map<T>(T Function(TResult result) ifResult, T Function(TError error) ifError) {
    return switch (this) {
      IsError<TError, TResult> error => ifError(error.value),
      IsResult<TError, TResult> result => ifResult(result.value),
    };
  }

  TResult? getResult() => this is IsResult<TError, TResult> ? (this as IsResult<TError, TResult>).value : null;

  TError? getError() => this is IsError<TError, TResult> ? (this as IsError<TError, TResult>).value : null;
}

class IsError<TError, TResult> extends ResultState<TError, TResult> {
  final TError value;
  const IsError(this.value);
}

class IsResult<TError, TResult> extends ResultState<TError, TResult> {
  final TResult value;
  const IsResult(this.value);
}
