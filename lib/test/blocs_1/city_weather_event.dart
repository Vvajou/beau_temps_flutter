// part of 'city_bloc.dart';

// abstract class CityEvent extends Equatable {
//   const CityEvent();

//   @override
//   List<Object> get props => [];
// }

// class SearchCityEvent extends CityEvent {
//   final double lat;
//   final double long;

//   const SearchCityEvent(this.lat, this.long);

//   @override
//   List<Object> get props => [lat, long];
// }

// class AddCityEvent extends CityEvent {
//   final String cityName;

//   const AddCityEvent(this.cityName);

//   @override
//   List<Object> get props => [cityName];
// }
// // 
part of 'city_weather_bloc.dart';

abstract class CityWeatherEvent extends Equatable {
  const CityWeatherEvent();

  @override
  List<Object> get props => [];
}

class GetCityWeather extends CityWeatherEvent {
  final double latitude;
  final double longitude;

  GetCityWeather(this.latitude, this.longitude);

  @override
  List<Object> get props => [latitude, longitude];
}

