import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/condition_dto.dart';

part 'current_dto.g.dart';

@JsonSerializable()
class CurrentDTO {
  @JsonKey(name: 'last_updated_epoch')
  final int lastUpdatedEpoch;
  @JsonKey(name: 'last_updated')
  final String lastUpdated;
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
  @JsonKey(name: 'humidity')
  final int humidity;
  @JsonKey(name: 'cloud')
  final int cloud;
  @JsonKey(name: 'feelslike_c')
  final double feelslikeC;
  @JsonKey(name: 'vis_km')
  final double visKm;
  @JsonKey(name: 'uv')
  final double uv;
  @JsonKey(name: 'gust_kph')
  final double gustKph;

  CurrentDTO({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.visKm,
    required this.uv,
    required this.gustKph,
  });

  factory CurrentDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentDTOFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentDTOToJson(this);
}
