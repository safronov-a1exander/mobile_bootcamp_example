import 'package:mobile_bootcamp_example/features/weather/data/entities/location_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/location_model.dart';

extension LocationDTOToModelMapper on LocationDTO {
  LocationModel toModel() {
    return LocationModel(
      name: name,
      region: region,
      country: country,
    );
  }
}
