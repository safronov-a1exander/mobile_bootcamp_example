import 'package:mobile_bootcamp_example/features/weather/data/entities/weather_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/current_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/forecast_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/location_mapper.dart';

extension WeatherDTOToModelMapper on WeatherDTO {
  WeatherModel toModel() {
    return WeatherModel(
      location: location.toModel(),
      current: current.toModel(),
      forecast: forecast?.toModel(),
    );
  }
}
