import 'package:dio/dio.dart';

import '../constant/constant.dart';
import '../utils/utils.dart';
class ApiService {
  final dio = createDio();

  ApiService._internal();

  static final _singleton = ApiService._internal();
  factory ApiService() => _singleton;

  static createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveTimeout: 15000,
        connectTimeout: 15000,
        sendTimeout: 15000,
      ),
    );

    dio.interceptors.addAll(
      {
        BaseInterceptor(),
      },
    );
    return dio;
  }
}
