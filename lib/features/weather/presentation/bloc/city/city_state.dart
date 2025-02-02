part of 'city_bloc.dart';

@freezed
abstract class CityState with _$CityState {
  const factory CityState.initial() = CityInitialState;
  const factory CityState.loading() = CityLoadingState;
  const factory CityState.success(CityModel city) = CitySuccessState;
  const factory CityState.failure() = CityFailureState;
}
