import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_rest_client_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dioRestClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://randomuser.me/api',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
  dio.interceptors.addAll([
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  ]);
  return dio;
}
