import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiEndpoint {
  final String baseUrl;
  final String path;
  final Map<String, dynamic> queryParameters;

  ApiEndpoint(this.baseUrl, this.path, this.queryParameters);
}

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    updateDioInterceptors();
  }

  void updateDioInterceptors() {
    _dio.options = BaseOptions(
      receiveDataWhenStatusError: true,
      validateStatus: (value) {
        return value! <= 500;
      },
      headers: {
        'Accept': 'application/json',
      },
    );
  }

  Future<Response> get(ApiEndpoint endpoint) async {
    final url = endpoint.baseUrl + endpoint.path;
    return _dio.get(url, queryParameters: endpoint.queryParameters);
  }

  Future<Response> post(ApiEndpoint endpoint, {Object? data}) async {
    final url = endpoint.baseUrl + endpoint.path;
    return _dio.post(url,
        queryParameters: endpoint.queryParameters, data: data);
  }

  Future<Response> patch(ApiEndpoint endpoint, {Object? data}) async {
    final url = endpoint.baseUrl + endpoint.path;
    return _dio.patch(url,
        queryParameters: endpoint.queryParameters, data: data);
  }

  Future<Response> put(ApiEndpoint endpoint, {Object? data}) async {
    final url = endpoint.baseUrl + endpoint.path;
    return _dio.put(url, queryParameters: endpoint.queryParameters, data: data);
  }

  Future<Response> delete(ApiEndpoint endpoint) async {
    final url = endpoint.baseUrl + endpoint.path;
    return _dio.delete(url, queryParameters: endpoint.queryParameters);
  }
}
