import 'package:equatable/equatable.dart';
import '../test/models_1/city.dart';

abstract class AddCityState extends Equatable {
  const AddCityState();

  @override
  List<Object> get props => [];
}

class CitySearchInitial extends AddCityState {}

class CitySearchLoading extends AddCityState {}

class CitySearchLoaded extends AddCityState {
  final List<City> cityList;

  CitySearchLoaded(this.cityList);

  @override
  List<Object> get props => [cityList];
}

class CitySearchError extends AddCityState {}

// // bloc/add_city_state.dart

// import 'package:equatable/equatable.dart';
// import '../models/city.dart';

// abstract class AddCityState extends Equatable {
//   const AddCityState();

//   @override
//   List<Object> get props => [];
// }

// class CitySearchInitial extends AddCityState {}

// class CitySearchLoading extends AddCityState {}

// class CitySearchLoaded extends AddCityState {
//   final City city;

//   CitySearchLoaded(this.city);

//   @override
//   List<Object> get props => [city];
// }

// class CitySearchError extends AddCityState {}

// // bloc/add_city_state.dart

// import '../models/weather.dart';
// import '../models/city.dart';
// import '../blocs/add_city_event.dart';
// import 'package:equatable/equatable.dart';

// abstract class AddCityState extends Equatable {
//   const AddCityState();

//   @override
//   List<Object> get props => [];
// }

// class AddCityInitial extends AddCityState {}

// class CitySearchLoading extends AddCityState {}

// class CitySearchLoaded extends AddCityState {
//   final City city;
//   final Weather weather;

//   const CitySearchLoaded(this.city, this.weather);

//   @override
//   List<Object> get props => [city, weather];
// }

// class CitySearchError extends AddCityState {}
