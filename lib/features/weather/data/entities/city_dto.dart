import 'package:json_annotation/json_annotation.dart';

part 'city_dto.g.dart';

@JsonSerializable()
class CityDTO {
  @JsonKey(name: 'cityName')
  final String cityName;

  CityDTO({
    required this.cityName,
  });

  factory CityDTO.fromJson(Map<String, dynamic> json) =>
      _$CityDTOFromJson(json);
  Map<String, dynamic> toJson() => _$CityDTOToJson(this);
}
