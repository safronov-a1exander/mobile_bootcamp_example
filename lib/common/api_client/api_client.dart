import 'package:dio/dio.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/weather_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("current.json")
  Future<WeatherDTO> getCurrent(
    @Query("q") String cityName, {
    @Header('Content-Type') String contentType = 'application/json',
  });

  @POST("forecast.json")
  Future<WeatherDTO> getForecast(
    @Query("q") String cityName, {
    @Header('Content-Type') String contentType = 'application/json',
  });
}
