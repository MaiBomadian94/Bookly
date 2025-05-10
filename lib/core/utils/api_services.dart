import 'package:bookly_app/core/utils/api_urls.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await _dio.get(
      '${ApiURL.baseURL}$endPoint',
      queryParameters: queryParameters,
    );

    return response.data;
  }
}
