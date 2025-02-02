import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';

abstract interface class IWeatherRepository {
  Future<WeatherModel> getCurrent(CityModel city);
  Future<WeatherModel> getForecast(CityModel city);
}
