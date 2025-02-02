import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/repositories/weather_repository.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository _weatherRepository;

  WeatherBloc({
    required IWeatherRepository weatherRepository,
  })  : _weatherRepository = weatherRepository,
        super(const WeatherState.initial()) {
    on<WeatherCurrentFetched>(_getCurrent);
    on<WeatherForecastFetched>(_getForecast);
  }

  Future<void> _getCurrent(
    WeatherCurrentFetched event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());
    try {
      WeatherModel weather = await _weatherRepository.getCurrent(event.city);
      emit(WeatherState.success(weather));
    } on Object {
      emit(const WeatherState.failure());
      rethrow;
    } finally {
      emit(const WeatherState.initial());
    }
  }

  Future<void> _getForecast(
    WeatherForecastFetched event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());
    try {
      WeatherModel weather = await _weatherRepository.getForecast(event.city);
      emit(WeatherState.success(weather));
    } on Object {
      emit(const WeatherState.failure());
      rethrow;
    } finally {
      emit(const WeatherState.initial());
    }
  }
}
