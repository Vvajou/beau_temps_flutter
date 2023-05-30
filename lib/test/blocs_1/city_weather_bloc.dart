import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../test/models_1/weather.dart';
import '../test/services_1/weather_service.dart';

part 'city_weather_event.dart';
part 'city_weather_state.dart';

class CityWeatherBloc extends Bloc<CityWeatherEvent, CityWeatherState> {
  final WeatherService weatherService;

  CityWeatherBloc(this.weatherService) : super(CityWeatherInitial());

  @override
  Stream<CityWeatherState> mapEventToState(CityWeatherEvent event) async* {
    if (event is GetCityWeather) {
      yield CityWeatherLoading();
      try {
        final Weather weather = await weatherService.getCityWeather(event.latitude, event.longitude);
        yield CityWeatherLoaded(weather);
      } catch (error) {
        yield CityWeatherError();
      }
    }
  }
}

