import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:main/shared/endpoints.dart';

class DioService {
  DioService();

  final _dio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl))
    ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

  Future<Map<String, String>?> _headers() async {
    final token = await FirebaseAuth.instance.currentUser?.getIdToken();
    log('token: $token');
    final headers = token == null ? null : {'Authorization': 'Bearer $token'};
    return headers;
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: Options(headers: await _headers()),
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: await _headers()),
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options ?? Options(headers: await _headers()),
    );
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: await _headers()),
    );
  }

  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.patch<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(headers: await _headers()),
    );
  }
}
