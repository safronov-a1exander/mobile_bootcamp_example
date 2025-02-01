import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/current_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/forecast_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/location_model.dart';

part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required LocationModel location,
    required CurrentModel current,
    ForecastModel? forecast,
  }) = _WeatherModel;
}
