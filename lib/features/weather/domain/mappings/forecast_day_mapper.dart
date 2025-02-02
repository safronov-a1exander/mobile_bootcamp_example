import 'package:mobile_bootcamp_example/features/weather/data/entities/forecast_day_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/forecast_day_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/astro_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/day_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/hour_mapper.dart';

extension ForecastDayDTOToModelMapper on ForecastDayDTO {
  ForecastDayModel toModel() {
    return ForecastDayModel(
      date: date,
      day: day.toModel(),
      astro: astro.toModel(),
      hour: hour.map((hourDTO) => hourDTO.toModel()).toList(),
    );
  }
}
