import 'package:core_module/core_module.dart';

class RestClientResponse implements RestClientHttpMessage {
  dynamic data;
  int? statusCode;
  String? message;
  RestClientRequest request;

  RestClientResponse({
    this.data,
    this.statusCode,
    this.message,
    required this.request,
  });
}
