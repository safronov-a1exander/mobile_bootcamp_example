import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/condition_model.dart';

part 'day_model.freezed.dart';

@freezed
class DayModel with _$DayModel {
  const factory DayModel({
    required double maxtempC,
    required double mintempC,
    required double avgtempC,
    required double maxwindKph,
    required double totalsnowCm,
    required double avgvisKm,
    required double avghumidity,
    required int dailyWillItRain,
    required int dailyChanceOfRain,
    required int dailyWillItSnow,
    required int dailyChanceOfSnow,
    required ConditionModel condition,
    required double uv,
  }) = _DayModel;
}
