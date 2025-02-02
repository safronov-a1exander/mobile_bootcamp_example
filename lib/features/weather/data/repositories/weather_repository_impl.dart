import 'package:mobile_bootcamp_example/features/weather/data/datasources/weather_datasource.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/weather_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/city_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/weather_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepository implements IWeatherRepository {
  final IWeatherDataSource _weatherDataSource;

  WeatherRepository({
    required IWeatherDataSource weatherDataSource,
  }) : _weatherDataSource = weatherDataSource;

  @override
  Future<WeatherModel> getCurrent(CityModel city) async {
    try {
      WeatherDTO weather = await _weatherDataSource.getCurrent(city.toDTO());
      return weather.toModel();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<WeatherModel> getForecast(CityModel city) async {
    try {
      WeatherDTO weather = await _weatherDataSource.getForecast(city.toDTO());
      return weather.toModel();
    } catch (e) {
      rethrow;
    }
  }
}
