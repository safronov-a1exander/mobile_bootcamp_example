import 'package:mobile_bootcamp_example/features/weather/data/entities/day_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/day_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/condition_mapper.dart';

extension DayDTOToModelMapper on DayDTO {
  DayModel toModel() {
    return DayModel(
      maxtempC: maxtempC,
      mintempC: mintempC,
      avgtempC: avgtempC,
      maxwindKph: maxwindKph,
      totalsnowCm: totalsnowCm,
      avgvisKm: avgvisKm,
      avghumidity: avghumidity,
      dailyWillItRain: dailyWillItRain,
      dailyChanceOfRain: dailyChanceOfRain,
      dailyWillItSnow: dailyWillItSnow,
      dailyChanceOfSnow: dailyChanceOfSnow,
      condition: condition.toModel(),
      uv: uv,
    );
  }
}
