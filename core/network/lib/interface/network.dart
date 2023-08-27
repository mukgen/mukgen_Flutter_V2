import 'package:network/interface/http_method.dart';
import 'package:dio/dio.dart';

abstract class Network {
  Future<Response<dynamic>> sendRequest({
    required HTTPMethod method,
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? body,
  });
}
