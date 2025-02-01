import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/condition_model.dart';

part 'current_model.freezed.dart';

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel({
    required int lastUpdatedEpoch,
    required String lastUpdated,
    required double tempC,
    required int isDay,
    required ConditionModel condition,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double visKm,
    required double uv,
    required double gustKph,
  }) = _CurrentModel;
}
