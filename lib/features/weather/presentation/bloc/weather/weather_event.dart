part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getCurrent(CityModel city) = WeatherCurrentFetched;
  const factory WeatherEvent.getForecast(CityModel city) =
      WeatherForecastFetched;
}
