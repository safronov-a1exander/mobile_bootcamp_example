import 'package:mobile_bootcamp_example/features/weather/data/entities/city_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class ICityDataSource {
  Future<void> set(CityDTO city);
  Future<CityDTO> get();
}

final class LocalCityDataSource implements ICityDataSource {
  const LocalCityDataSource({required SharedPreferencesAsync storage})
      : _storage = storage;
  final SharedPreferencesAsync _storage;

  @override
  Future<void> set(CityDTO city) async {
    await _storage.setString('city', city.cityName);
  }

  @override
  Future<CityDTO> get() async {
    final String? cityName = await _storage.getString('city');
    return CityDTO(cityName: cityName ?? '');
  }
}
