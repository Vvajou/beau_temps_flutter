
import 'package:equatable/equatable.dart';
import '../test/models_1/city.dart';

abstract class CityListEvent extends Equatable {
  const CityListEvent();

  @override
  List<Object> get props => [];
}

class GetCityList extends CityListEvent {
  final List<City> cityList;

  const GetCityList(this.cityList);

  @override
  List<Object> get props => [cityList];
}


// import 'package:equatable/equatable.dart';
// import '../models/city.dart';

// abstract class CityListEvent extends Equatable {
//   const CityListEvent();

//   @override
//   List<Object> get props => [];
// }

// class GetCityList extends CityListEvent {}

// class AddCityToList extends CityListEvent {
//   final City city;

//   const AddCityToList(this.city);

//   @override
//   List<Object> get props => [city];
// }

// class RemoveCityFromList extends CityListEvent {
//   final City city;

//   const RemoveCityFromList(this.city);

//   @override
//   List<Object> get props => [city];
// }




// part of 'city_list_bloc.dart';

// abstract class CityListEvent extends Equatable {
//   const CityListEvent();

//   @override
//   List<Object> get props => [];
// }

// class GetCityList extends CityListEvent {
//   final List<String> cityList;

//   GetCityList(this.cityList);

//   @override
//   List<Object> get props => [cityList];
// }
