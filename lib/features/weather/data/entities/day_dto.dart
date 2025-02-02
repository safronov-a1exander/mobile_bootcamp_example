import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/condition_dto.dart';

part 'day_dto.g.dart';

@JsonSerializable()
class DayDTO {
  @JsonKey(name: 'maxtemp_c')
  final double maxtempC;
  @JsonKey(name: 'mintemp_c')
  final double mintempC;
  @JsonKey(name: 'avgtemp_c')
  final double avgtempC;
  @JsonKey(name: 'maxwind_kph')
  final double maxwindKph;
  @JsonKey(name: 'totalsnow_cm')
  final double totalsnowCm;
  @JsonKey(name: 'avgvis_km')
  final double avgvisKm;
  @JsonKey(name: 'avghumidity')
  final double avghumidity;
  @JsonKey(name: 'daily_will_it_rain')
  final int dailyWillItRain;
  @JsonKey(name: 'daily_chance_of_rain')
  final int dailyChanceOfRain;
  @JsonKey(name: 'daily_will_it_snow')
  final int dailyWillItSnow;
  @JsonKey(name: 'daily_chance_of_snow')
  final int dailyChanceOfSnow;
  @JsonKey(name: 'condition')
  final ConditionDTO condition;
  @JsonKey(name: 'uv')
  final double uv;

  DayDTO({
    required this.maxtempC,
    required this.mintempC,
    required this.avgtempC,
    required this.maxwindKph,
    required this.totalsnowCm,
    required this.avgvisKm,
    required this.avghumidity,
    required this.dailyWillItRain,
    required this.dailyChanceOfRain,
    required this.dailyWillItSnow,
    required this.dailyChanceOfSnow,
    required this.condition,
    required this.uv,
  });

  factory DayDTO.fromJson(Map<String, dynamic> json) => _$DayDTOFromJson(json);
  Map<String, dynamic> toJson() => _$DayDTOToJson(this);
}
