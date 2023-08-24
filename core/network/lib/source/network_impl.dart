import 'package:dio/dio.dart';
import 'package:network/interface/http_method.dart';
import 'package:network/interface/network.dart';

class NetWorkImpl implements Network {
  Dio dio = Dio(BaseOptions(baseUrl: "http://asdfasdf.com"));

  @override
  Future<dynamic> sendRequest(
      {required HTTPMethod method,
      required String path,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParams,
      Object? body}) async {
    final response = await dio.request(
      path,
      options: Options(method: method.name, headers: headers),
      queryParameters: queryParams,
      data: body,
    );
    if (response.statusCode! > 300) {
      throw Exception(response.data.toString());
    }
    return response.data;
  }
}
