import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/repositories/city_repository.dart';

part 'city_bloc.freezed.dart';
part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final ICityRepository _cityRepository;

  CityBloc({
    required ICityRepository cityRepository,
  })  : _cityRepository = cityRepository,
        super(const CityState.initial()) {
    on<CitySetted>(_setCity);
    on<CityFetched>(_getCity);
  }

  Future<void> _getCity(
    CityFetched event,
    Emitter<CityState> emit,
  ) async {
    emit(const CityState.loading());
    try {
      CityModel city = await _cityRepository.get();
      emit(CityState.success(city));
    } on Object {
      emit(const CityState.failure());
      rethrow;
    } finally {
      emit(const CityState.initial());
    }
  }

  Future<void> _setCity(
    CitySetted event,
    Emitter<CityState> emit,
  ) async {
    emit(const CityState.loading());
    try {
      await _cityRepository.set(event.city);
      emit(CityState.success(event.city));
    } on Object {
      emit(const CityState.failure());
      rethrow;
    } finally {
      emit(const CityState.initial());
    }
  }
}
