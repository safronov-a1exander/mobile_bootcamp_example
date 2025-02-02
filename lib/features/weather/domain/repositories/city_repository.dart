import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';

abstract interface class ICityRepository {
  Future<CityModel> get();
  Future<void> set(CityModel city);
}
