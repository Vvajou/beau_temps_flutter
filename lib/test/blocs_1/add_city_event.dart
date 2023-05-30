import 'package:equatable/equatable.dart';
import '../test/models_1/city.dart';

abstract class AddCityEvent extends Equatable {
  const AddCityEvent();

  @override
  List<Object> get props => [];
}

class SearchCity extends AddCityEvent {
  final String query;

  const SearchCity(this.query);

  @override
  List<Object> get props => [query];
}

class CitySelected extends AddCityEvent {
  final City city;

  const CitySelected(this.city);

  @override
  List<Object> get props => [city];
}

// import 'package:equatable/equatable.dart';
// import '../models/city.dart';

// abstract class AddCityEvent extends Equatable {
//   const AddCityEvent();

//   @override
//   List<Object> get props => [];
// }

// class SearchCity extends AddCityEvent {
//   final String query;

//   const SearchCity(this.query);

//   @override
//   List<Object> get props => [query];
// }

// class AddCity extends AddCityEvent {
//   final City city;

//   const AddCity(this.city);

//   @override
//   List<Object> get props => [city];
// }


// part of 'add_city_bloc.dart';

// abstract class AddCityEvent extends Equatable {
//   const AddCityEvent();

//   @override
//   List<Object> get props => [];
// }

// class SearchCity extends AddCityEvent {
//   final String query;

//   SearchCity(this.query);

//   @override
//   List<Object> get props => [query];
// }
// bloc/add_city_event.dart

// import 'package:equatable/equatable.dart';

// abstract class AddCityEvent extends Equatable {
//   const AddCityEvent();

//   @override
//   List<Object> get props => [];
// }

// class SearchCity extends AddCityEvent {
//   final String query;

//   const SearchCity(this.query);

//   @override
//   List<Object> get props => [query];
// }

