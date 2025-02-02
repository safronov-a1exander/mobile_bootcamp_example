import 'package:mobile_bootcamp_example/features/weather/data/entities/city_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';

extension CityModelToDTOMapper on CityModel {
  CityDTO toDTO() {
    return CityDTO(cityName: cityName);
  }
}

extension CityDTOtoModelMapper on CityDTO {
  CityModel toModel() {
    return CityModel(cityName: cityName);
  }
}
