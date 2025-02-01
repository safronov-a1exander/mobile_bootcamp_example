import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro_model.freezed.dart';

@freezed
class AstroModel with _$AstroModel {
  const factory AstroModel({
    required String sunrise,
    required String sunset,
    required String moonrise,
    required String moonset,
  }) = _AstroModel;
}
