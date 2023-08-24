import 'package:network/interface/http_method.dart';

abstract class Network {
  Future<dynamic> sendRequest({
    required HTTPMethod method,
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? body,
  });
}
