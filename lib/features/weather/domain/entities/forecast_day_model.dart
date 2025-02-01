import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/astro_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/day_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/hour_model.dart';

part 'forecast_day_model.freezed.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  const factory ForecastDayModel({
    required String date,
    required DayModel day,
    required AstroModel astro,
    required List<HourModel> hour,
  }) = _ForecastDayModel;
}
