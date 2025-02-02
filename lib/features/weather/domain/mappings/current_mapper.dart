import 'package:mobile_bootcamp_example/features/weather/data/entities/current_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/current_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/condition_mapper.dart';

extension CurrentDTOToModelMapper on CurrentDTO {
  CurrentModel toModel() {
    return CurrentModel(
      lastUpdatedEpoch: lastUpdatedEpoch,
      lastUpdated: lastUpdated,
      tempC: tempC,
      isDay: isDay,
      condition: condition.toModel(),
      windKph: windKph,
      windDegree: windDegree,
      windDir: windDir,
      pressureMb: pressureMb,
      humidity: humidity,
      cloud: cloud,
      feelslikeC: feelslikeC,
      visKm: visKm,
      uv: uv,
      gustKph: gustKph,
    );
  }
}
