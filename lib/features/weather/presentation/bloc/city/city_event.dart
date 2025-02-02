part of 'city_bloc.dart';

@freezed
abstract class CityEvent with _$CityEvent {
  const factory CityEvent.setCity(CityModel city) = CitySetted;
  const factory CityEvent.getCity() = CityFetched;
}
