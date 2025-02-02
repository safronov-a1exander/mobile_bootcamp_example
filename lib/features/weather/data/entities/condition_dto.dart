import 'package:json_annotation/json_annotation.dart';

part 'condition_dto.g.dart';

@JsonSerializable()
class ConditionDTO {
  @JsonKey(name: 'text')
  final String text;
  @JsonKey(name: 'icon')
  final String icon;

  ConditionDTO({
    required this.text,
    required this.icon,
  });

  factory ConditionDTO.fromJson(Map<String, dynamic> json) =>
      _$ConditionDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionDTOToJson(this);
}
