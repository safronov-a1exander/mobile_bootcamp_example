import 'package:dio/dio.dart';
import 'package:mobile_bootcamp_example/env/env.dart';

class WeatherApiInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String key = Env.apiKey;
    options.queryParameters.addAll({'key': key});
    super.onRequest(options, handler);
  }
}
