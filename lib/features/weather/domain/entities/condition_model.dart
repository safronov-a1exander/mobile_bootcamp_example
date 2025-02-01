import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition_model.freezed.dart';

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    required String text,
    required String icon,
  }) = _ConditionModel;
}
