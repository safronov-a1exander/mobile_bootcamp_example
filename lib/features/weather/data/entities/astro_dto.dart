import 'package:json_annotation/json_annotation.dart';

part 'astro_dto.g.dart';

@JsonSerializable()
class AstroDTO {
  @JsonKey(name: 'sunrise')
  final String sunrise;
  @JsonKey(name: 'sunset')
  final String sunset;
  @JsonKey(name: 'moonrise')
  final String moonrise;
  @JsonKey(name: 'moonset')
  final String moonset;

  AstroDTO({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
  });

  factory AstroDTO.fromJson(Map<String, dynamic> json) =>
      _$AstroDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AstroDTOToJson(this);
}
