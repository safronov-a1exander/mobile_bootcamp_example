import 'package:mobile_bootcamp_example/features/weather/data/entities/hour_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/hour_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/condition_mapper.dart';

extension HourDTOToModelMapper on HourDTO {
  HourModel toModel() {
    return HourModel(
      timeEpoch: timeEpoch,
      time: time,
      tempC: tempC,
      isDay: isDay,
      condition: condition.toModel(),
      windKph: windKph,
      windDegree: windDegree,
      windDir: windDir,
      pressureMb: pressureMb,
      snowCm: snowCm,
      humidity: humidity,
      cloud: cloud,
      feelslikeC: feelslikeC,
      windchillC: windchillC,
      heatindexC: heatindexC,
      dewpointC: dewpointC,
      willItRain: willItRain,
      chanceOfRain: chanceOfRain,
      willItSnow: willItSnow,
      chanceOfSnow: chanceOfSnow,
      visKm: visKm,
      gustKph: gustKph,
      uv: uv,
    );
  }
}
