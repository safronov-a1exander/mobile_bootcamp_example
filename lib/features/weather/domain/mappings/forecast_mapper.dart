import 'package:mobile_bootcamp_example/features/weather/data/entities/forecast_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/forecast_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/forecast_day_mapper.dart';

extension ForecastDTOToModelMapper on ForecastDTO {
  ForecastModel toModel() {
    return ForecastModel(
      forecastDay: forecastDay.map((day) => day.toModel()).toList(),
    );
  }
}
