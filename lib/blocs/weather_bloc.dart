import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/weather.dart';
import '../repositories/weather_repository.dart';

enum WeatherEvent { FetchWeather }

class WeatherBloc extends Bloc<WeatherEvent, Weather> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(Weather.initial());

  @override
  Stream<Weather> mapEventToState(WeatherEvent event) async* {
    if (event == WeatherEvent.FetchWeather) {
      try {
        var weather = await weatherRepository.getWeather();
        yield weather;
      } catch (_) {
        yield Weather.error(); // handle error
      }
    }
  }
}
