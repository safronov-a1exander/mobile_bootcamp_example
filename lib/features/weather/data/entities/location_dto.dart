import 'package:json_annotation/json_annotation.dart';

part 'location_dto.g.dart';

@JsonSerializable()
class LocationDTO {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'region')
  final String region;
  @JsonKey(name: 'country')
  final String country;

  LocationDTO({
    required this.name,
    required this.region,
    required this.country,
  });

  factory LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDTOFromJson(json);
  Map<String, dynamic> toJson() => _$LocationDTOToJson(this);
}
