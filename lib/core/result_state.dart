sealed class ResultState<TError, TResult> {
  const ResultState();

  T ways<T>(T Function(TResult result) ifResult, T Function(TError erro) ifError) {
    return switch (this) {
      IsError error => ifError(error.value),
      IsResult result => ifResult(result.value),
    };
  }
}

class IsError<TError, TResult> extends ResultState<TError, TResult> {
  final TError value;
  const IsError(this.value);
}

class IsResult<TError, TResult> extends ResultState<TError, TResult> {
  final TResult value;
  const IsResult(this.value);
}
