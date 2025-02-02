import 'package:mobile_bootcamp_example/common/api_client/api_client.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/city_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/weather_dto.dart';

abstract interface class IWeatherDataSource {
  Future<WeatherDTO> getCurrent(CityDTO city);
  Future<WeatherDTO> getForecast(CityDTO city);
}

final class WeathertDataSource implements IWeatherDataSource {
  final ApiClient _client;

  const WeathertDataSource({required ApiClient client}) : _client = client;

  @override
  Future<WeatherDTO> getCurrent(CityDTO city) async {
    final WeatherDTO weather = await _client.getCurrent(city.cityName);
    return weather;
  }

  @override
  Future<WeatherDTO> getForecast(CityDTO city) async {
    final WeatherDTO weather = await _client.getForecast(city.cityName);
    return weather;
  }
}
