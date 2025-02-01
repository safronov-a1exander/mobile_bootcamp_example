import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/condition_model.dart';

part 'hour_model.freezed.dart';

@freezed
class HourModel with _$HourModel {
  const factory HourModel({
    required int timeEpoch,
    required String time,
    required double tempC,
    required int isDay,
    required ConditionModel condition,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double snowCm,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double windchillC,
    required double heatindexC,
    required double dewpointC,
    required int willItRain,
    required int chanceOfRain,
    required int willItSnow,
    required int chanceOfSnow,
    required double visKm,
    required double gustKph,
    required double uv,
  }) = _HourModel;
}
