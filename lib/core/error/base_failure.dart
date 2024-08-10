abstract class BaseFailure {
  final String message;
  final StackTrace? stackTrace;

  BaseFailure({required this.message, this.stackTrace});

  @override
  String toString() => 'Failure: $message';
}

class NoConnectionFailure extends BaseFailure {
  NoConnectionFailure({super.message = "No internet connection", super.stackTrace});
}

class DataPersistenceFailure extends BaseFailure {
  DataPersistenceFailure({super.message = "Data persistence error", super.stackTrace});
}

class ServerFailure extends BaseFailure {
  final int? statusCode;

  ServerFailure({
    required super.message,
    super.stackTrace,
    this.statusCode,
  });
}

class UnknownFailure extends BaseFailure {
  UnknownFailure({super.message = "An unknown error occurred", super.stackTrace});
}
