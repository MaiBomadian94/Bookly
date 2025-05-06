import 'package:bookly_app/core/utils/api_urls.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('${ApiURL.baseURL}$endPoint');

    return response.data;
  }
}
