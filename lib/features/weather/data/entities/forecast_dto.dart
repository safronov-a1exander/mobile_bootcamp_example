import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/forecast_day_dto.dart';

part 'forecast_dto.g.dart';

@JsonSerializable()
class ForecastDTO {
  @JsonKey(name: 'forecastday')
  final List<ForecastDayDTO> forecastDay;

  ForecastDTO({required this.forecastDay});

  factory ForecastDTO.fromJson(Map<String, dynamic> json) =>
      _$ForecastDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastDTOToJson(this);
}
