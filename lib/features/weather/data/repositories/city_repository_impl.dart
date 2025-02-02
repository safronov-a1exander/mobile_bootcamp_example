import 'package:mobile_bootcamp_example/features/weather/data/datasources/local_city_datasource.dart';
import 'package:mobile_bootcamp_example/features/weather/data/entities/city_dto.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/mappings/city_mapper.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/repositories/city_repository.dart';

class CityRepository implements ICityRepository {
  final ICityDataSource _cityDataSource;

  CityRepository({
    required ICityDataSource cityDataSource,
  }) : _cityDataSource = cityDataSource;

  @override
  Future<CityModel> get() async {
    try {
      CityDTO city = await _cityDataSource.get();
      return city.toModel();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> set(CityModel city) async {
    try {
      await _cityDataSource.set(city.toDTO());
    } catch (e) {
      rethrow;
    }
  }
}
