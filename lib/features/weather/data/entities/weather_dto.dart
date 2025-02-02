import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/current_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/forecast_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/location_dto.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDTO {
  @JsonKey(name: 'location')
  final LocationDTO location;
  @JsonKey(name: 'current')
  final CurrentDTO current;
  @JsonKey(name: 'forecast', required: false)
  final ForecastDTO? forecast;

  WeatherDTO({
    required this.location,
    required this.current,
    this.forecast,
  });

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherDTOToJson(this);
}
