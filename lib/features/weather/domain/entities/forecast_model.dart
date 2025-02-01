import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/forecast_day_model.dart';

part 'forecast_model.freezed.dart';

@freezed
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    required List<ForecastDayModel> forecastDay,
  }) = _ForecastModel;
}
