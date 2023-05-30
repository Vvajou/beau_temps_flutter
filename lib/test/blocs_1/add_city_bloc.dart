import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../test/models_1/city.dart';
import '../test/models_1/weather.dart';
import '../test/services_1/weather_service.dart';
import 'add_city_event.dart';
import 'add_city_state.dart';

class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
  final WeatherService weatherService;

  AddCityBloc({required this.weatherService}) : super(CitySearchInitial());

  @override
  Stream<AddCityState> mapEventToState(
    AddCityEvent event,
  ) async* {
    if (event is SearchCity) {
      yield CitySearchLoading();
      try {
        City city = await weatherService.searchCity(event.query);
        Weather weather = await weatherService.fetchWeather(city);
        yield CitySearchLoaded(city, weather);
      } catch (_) {
        yield CitySearchError();
      }
    } else if (event is CitySelected) {
      // Action for when a city is selected
    }
  }
}

// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../models/city.dart';
// import '../services/weather_service.dart';
// import 'add_city_event.dart';
// import 'add_city_state.dart';

// class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
//   final WeatherService weatherService;

//   AddCityBloc({required this.weatherService}) : super(CitySearchInitial());

//   @override
//   Stream<AddCityState> mapEventToState(
//     AddCityEvent event,
//   ) async* {
//     if (event is SearchCity) {
//       yield CitySearchLoading();
//       try {
//         City city = await weatherService.searchCity(event.query);
//         yield CitySearchLoaded(city);
//       } catch (_) {
//         yield CitySearchError();
//       }
//     } else if (event is CitySelected) {
//       // Action for when a city is selected
//     }
//   }
// }



// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../models/city.dart';
// import '../services/weather_service.dart';
// import 'add_city_event.dart';
// import 'add_city_state.dart';

// class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
//   final WeatherService weatherService;

//   AddCityBloc({required this.weatherService}) : super(CitySearchInitial());

//   @override
//   Stream<AddCityState> mapEventToState(
//     AddCityEvent event,
//   ) async* {
//     if (event is SearchCity) {
//       yield CitySearchLoading();
//       try {
//         List<City> cityList = await weatherService.searchCity(event.query);
//         yield CitySearchLoaded(cityList);
//       } catch (_) {
//         yield CitySearchError();
//       }
//     } else if (event is CitySelected) {
//       // Action for when a city is selected
//     }
//   }
// }




// // bloc/add_city_bloc.dart

// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../models/city.dart';
// import '../services/weather_service.dart';
// import 'add_city_event.dart';
// import 'add_city_state.dart';

// class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
//   final WeatherService weatherService;

//   AddCityBloc(this.weatherService) : super(CitySearchInitial());

//   @override
//   Stream<AddCityState> mapEventToState(AddCityEvent event) async* {
//     if (event is SearchCity) {
//       yield CitySearchLoading();
//       try {
//         final City city = await weatherService.searchCity(event.query);
//         yield CitySearchLoaded(city);
//       } catch (_) {
//         yield CitySearchError();
//       }
//     }
//   }
// }


// // bloc/add_city_bloc.dart

// import '../services/weather_service.dart';
// import '../models/city.dart';
// import '../models/weather.dart';
// //import 'package:your_app/bloc/add_city_event.dart';
// import 'add_city_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
//   final WeatherService weatherService;

//   AddCityBloc(this.weatherService) : super(AddCityInitial());

//   @override
//   Stream<AddCityState> mapEventToState(AddCityEvent event) async* {
//     if (event is SearchCity) {
//       yield CitySearchLoading();
//       try {
//         final City city = await weatherService.searchCity(event.query);
//         final Weather weather = await weatherService.fetchWeather(city);
//         yield CitySearchLoaded(city, weather);
//       } catch (_) {
//         yield CitySearchError();
//       }
//     }
//   }
// }

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';
// import '../services/weather_service.dart';
// import '../models/city.dart';
// import '../models/weather.dart';
// import 'add_city_event.dart';
// import 'add_city_state.dart';

// class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
//   final WeatherService weatherService;

//   AddCityBloc(this.weatherService) : super(AddCityInitial());

//   @override
//   Stream<AddCityState> mapEventToState(AddCityEvent event) async* {
//     if (event is SearchCity) {
//       yield CitySearchLoading();
//       try {
//         final City city = await weatherService.searchCity(event.query);
//         final Weather weather = await weatherService.fetchWeather(city);
//         yield CitySearchLoaded(city, weather);
//       } catch (_) {
//         yield CitySearchError();
//       }
//     }
//   }
// }
