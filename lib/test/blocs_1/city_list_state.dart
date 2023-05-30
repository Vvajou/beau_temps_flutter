import 'package:equatable/equatable.dart';
import '../test/models_1/city.dart';

abstract class CityListState extends Equatable {
  const CityListState();

  @override
  List<Object> get props => [];
}

class CityListInitial extends CityListState {}

class CityListLoading extends CityListState {}

class CityListLoaded extends CityListState {
  final List<City> cityList;

  CityListLoaded(this.cityList);

  @override
  List<Object> get props => [cityList];
}

class CityListError extends CityListState {}


// import 'package:equatable/equatable.dart';
// import '../models/city.dart';

// abstract class CityListState extends Equatable {
//   const CityListState();

//   @override
//   List<Object> get props => [];
// }

// class CityListInitial extends CityListState {}

// class CityListLoading extends CityListState {}

// class CityListLoaded extends CityListState {
//   final List<City> cities;

//   const CityListLoaded(this.cities);

//   @override
//   List<Object> get props => [cities];
// }

// class CityListError extends CityListState {}


// part of 'city_list_bloc.dart';

// abstract class CityListState extends Equatable {
//   const CityListState();

//   @override
//   List<Object> get props => [];
// }

// class CityListInitial extends CityListState {}

// class CityListLoading extends CityListState {}

// class CityListLoaded extends CityListState {
//   final List<Weather> weatherList;

//   CityListLoaded(this.weatherList);

//   @override
//   List<Object> get props => [weatherList];
// }

// class CityListError extends CityListState {}
