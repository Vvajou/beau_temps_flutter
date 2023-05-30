import 'dart:async'; // Pour utiliser Stream et async*
import 'package:bloc/bloc.dart'; // Pour utiliser Bloc
import 'package:equatable/equatable.dart'; // Pour utiliser Equatable, qui permet de comparer les objets

// Remplacez ces chemins par les chemins réels de vos fichiers dans votre projet.
import '../test/models_1/city.dart'; // Pour utiliser City
import '../test/models_1/weather.dart'; // Pour utiliser Weather
import '../test/services_1/weather_service.dart'; // Pour utiliser WeatherService

// Ce sont les chemins vers les fichiers qui contiennent les définitions de vos événements et états de bloc.
import 'city_list_event.dart';
import 'city_list_state.dart';

class CityListBloc extends Bloc<CityListEvent, CityListState> {
  final WeatherService weatherService;

  CityListBloc({required this.weatherService}) : super(CityListInitial());

  @override
  Stream<CityListState> mapEventToState(
    CityListEvent event,
  ) async* {
    if (event is GetCityList) {
      yield CityListLoading();
      try {
        List<City> cityList = event.cityList;
        yield CityListLoaded(cityList);
      } catch (_) {
        yield CityListError();
      }
    }
  }
}


// import 'dart:async'; // Pour utiliser Stream et async*
// import 'package:bloc/bloc.dart'; // Pour utiliser Bloc
// import 'package:equatable/equatable.dart'; // Pour utiliser Equatable, qui permet de comparer les objets

// // Remplacez ces chemins par les chemins réels de vos fichiers dans votre projet.
// import '../models/city.dart'; // Pour utiliser City
// import '../models/weather.dart'; // Pour utiliser Weather
// import '../services/weather_service.dart'; // Pour utiliser WeatherService

// // Ce sont les chemins vers les fichiers qui contiennent les définitions de vos événements et états de bloc.
// import 'city_list_event.dart'; 
// import 'city_list_state.dart';
// class CityListBloc extends Bloc<CityListEvent, CityListState> {
//   final WeatherService weatherService;

//   CityListBloc({required this.weatherService}) : super(CityListInitial());

//   @override
//   Stream<CityListState> mapEventToState(
//     CityListEvent event,
//   ) async* {
//     if (event is GetCityList) {
//       yield CityListLoading();
//       try {
//         List<City> cityList = await Future.wait(
//             event.cityList.map((city) => weatherService.searchCity(city)));
//         yield CityListLoaded(cityList);
//       } catch (_) {
//         yield CityListError();
//       }
//     }
//   }
// }


// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../models/weather.dart';
// import '../services/weather_service.dart';

// part 'city_list_event.dart';
// part 'city_list_state.dart';

// class CityListBloc extends Bloc<CityListEvent, CityListState> {
//   final WeatherService weatherService;

//   CityListBloc(this.weatherService) : super(CityListInitial());

//   @override
//   Stream<CityListState> mapEventToState(CityListEvent event) async* {
//     if (event is GetCityList) {
//       yield CityListLoading();
//       try {
//         final List<Weather> weatherList = await weatherService.getCityListWeather(event.cityList);
//         yield CityListLoaded(weatherList);
//       } catch (error) {
//         yield CityListError();
//       }
//     }
//   }
// }

// import 'dart:async';
// import 'dart:convert';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:http/http.dart' as http;

// part 'city_event.dart';
// part 'city_state.dart';

// class CityBloc extends Bloc<CityEvent, CityState> {
//   CityBloc() : super(CityInitial());

//   @override
//   Stream<CityState> mapEventToState(
//     CityEvent event,
//   ) async* {
//     if (event is SearchCity) {
//       yield CityLoading();

//       final response = await http.get(
//         Uri.parse(
//             'https://api.open-meteo.com/v1/forecast?latitude=${event.latitude}&longitude=${event.longitude}&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m'),
//       );

//       if (response.statusCode == 200) {
//         final weatherData = json.decode(response.body);
//         yield CityLoaded(weatherData);
//       } else {
//         yield CityError('Failed to load weather data');
//       }
//     } else if (event is AddCity) {
//       yield CityAdded(event.cities);
//     }
//   }
// }
