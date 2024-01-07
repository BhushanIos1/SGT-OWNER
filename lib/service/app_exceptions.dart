class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix $_message";
  }
}

class InternetException extends AppException {
  InternetException([String? message])
      : super(message, "No Internet Connection");
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message])
      : super(message, "Request Timeout");
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, "Server Error");
}

class InvalidMethodException extends AppException {
  InvalidMethodException([String? message]) : super(message, "Invalid Method");
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, "");
}
