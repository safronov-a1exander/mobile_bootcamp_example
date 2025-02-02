part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitialState;
  const factory WeatherState.loading() = WeatherLoadingState;
  const factory WeatherState.success(WeatherModel weather) =
      WeatherSuccessState;
  const factory WeatherState.failure() = WeatherFailureState;
}
