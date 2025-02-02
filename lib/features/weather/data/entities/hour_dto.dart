import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/condition_dto.dart';

part 'hour_dto.g.dart';

@JsonSerializable()
class HourDTO {
  @JsonKey(name: 'time_epoch')
  final int timeEpoch;
  @JsonKey(name: 'time')
  final String time;
  @JsonKey(name: 'temp_c')
  final double tempC;
  @JsonKey(name: 'is_day')
  final int isDay;
  @JsonKey(name: 'condition')
  final ConditionDTO condition;
  @JsonKey(name: 'wind_kph')
  final double windKph;
  @JsonKey(name: 'wind_degree')
  final int windDegree;
  @JsonKey(name: 'wind_dir')
  final String windDir;
  @JsonKey(name: 'pressure_mb')
  final double pressureMb;
  @JsonKey(name: 'snow_cm')
  final double snowCm;
  @JsonKey(name: 'humidity')
  final int humidity;
  @JsonKey(name: 'cloud')
  final int cloud;
  @JsonKey(name: 'feelslike_c')
  final double feelslikeC;
  @JsonKey(name: 'windchill_c')
  final double windchillC;
  @JsonKey(name: 'heatindex_c')
  final double heatindexC;
  @JsonKey(name: 'dewpoint_c')
  final double dewpointC;
  @JsonKey(name: 'will_it_rain')
  final int willItRain;
  @JsonKey(name: 'chance_of_rain')
  final int chanceOfRain;
  @JsonKey(name: 'will_it_snow')
  final int willItSnow;
  @JsonKey(name: 'chance_of_snow')
  final int chanceOfSnow;
  @JsonKey(name: 'vis_km')
  final double visKm;
  @JsonKey(name: 'gust_kph')
  final double gustKph;
  @JsonKey(name: 'uv')
  final double uv;

  HourDTO({
    required this.timeEpoch,
    required this.time,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.snowCm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.windchillC,
    required this.heatindexC,
    required this.dewpointC,
    required this.willItRain,
    required this.chanceOfRain,
    required this.willItSnow,
    required this.chanceOfSnow,
    required this.visKm,
    required this.gustKph,
    required this.uv,
  });

  factory HourDTO.fromJson(Map<String, dynamic> json) =>
      _$HourDTOFromJson(json);
  Map<String, dynamic> toJson() => _$HourDTOToJson(this);
}
