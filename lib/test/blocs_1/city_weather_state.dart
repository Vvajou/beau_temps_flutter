// part of 'city_bloc.dart';

// abstract class CityState extends Equatable {
//   const CityState();

//   @override
//   List<Object> get props => [];
// }

// class CityInitial extends CityState {}

// class CityLoading extends CityState {}

// class CityLoaded extends CityState {
//   final Map<String, dynamic> weatherData;

//   CityLoaded(this.weatherData);

//   @override
//   List<Object> get props => [weatherData];
// }

// class CityError extends CityState {
//   final String message;

//   CityError(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class CityAdded extends CityState {
//   final List<String> cities;

//   CityAdded(this.cities);

//   @override
//   List<Object> get props => [cities];
// }
part of 'city_weather_bloc.dart';

abstract class CityWeatherState extends Equatable {
  const CityWeatherState();

  @override
  List<Object> get props => [];
}

class CityWeatherInitial extends CityWeatherState {}

class CityWeatherLoading extends CityWeatherState {}

class CityWeatherLoaded extends CityWeatherState {
  final Weather weather;

  CityWeatherLoaded(this.weather);

  @override
  List<Object> get props => [weather];
}

class CityWeatherError extends CityWeatherState {}
