import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/astro_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/day_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/hour_dto.dart';

part 'forecast_day_dto.g.dart';

@JsonSerializable()
class ForecastDayDTO {
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'day')
  final DayDTO day;
  @JsonKey(name: 'astro')
  final AstroDTO astro;
  @JsonKey(name: 'hour')
  final List<HourDTO> hour;

  ForecastDayDTO({
    required this.date,
    required this.day,
    required this.astro,
    required this.hour,
  });

  factory ForecastDayDTO.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastDayDTOToJson(this);
}
