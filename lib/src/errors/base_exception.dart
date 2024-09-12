abstract class BaseException implements Exception {
  final String message;
  final int? code;

  BaseException(this.message, [this.code]);

  @override
  String toString() {
    return 'Exception: $message (code: $code)';
  }
}

class NetworkException extends BaseException {
  NetworkException(super.message, [super.code]);
}
