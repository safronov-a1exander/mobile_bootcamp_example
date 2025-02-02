import 'package:mobile_bootcamp_example/features/weather/data/entities/condition_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/condition_model.dart';

extension ConditionDTOToModelMapper on ConditionDTO {
  ConditionModel toModel() {
    return ConditionModel(
      text: text,
      icon: icon,
    );
  }
}
