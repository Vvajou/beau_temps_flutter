import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models_1/city.dart';
import '../models_1/weather.dart';

class WeatherService {
  final String googleMapsApiKey = 'AIzaSyBesWtwEzxZg2LocAXeRz_4BEt_Z5Oyi7Y';

  Future<City> searchCity(String cityName) async {
    var response = await http.get(Uri.parse('https://maps.googleapis.com/maps/api/geocode/json?address=$cityName&key=$googleMapsApiKey'));
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var coordinates = jsonResponse['results'][0]['geometry']['location'];
      return City(name: cityName, latitude: coordinates['lat'], longitude: coordinates['lng']);
    } else {
      throw Exception('Failed to load city');
    }
  }
}


// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import '../models/weather.dart';
// import '../models/city.dart';

// class WeatherService {
//   final String googleMapsApiKey = 'AIzaSyBesWtwEzxZg2LocAXeRz_4BEt_Z5Oyi7Y';

//   Future<City> searchCity(String cityName) async {
//     var response = await http.get(Uri.parse('https://maps.googleapis.com/maps/api/geocode/json?address=$cityName&key=$googleMapsApiKey'));
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       var coordinates = jsonResponse['results'][0]['geometry']['location'];
//       return City(name: cityName, latitude: coordinates['lat'], longitude: coordinates['lng']);
//     } else {
//       throw Exception('Failed to load city');
//     }
//   }

//   Future<Weather> fetchWeather(City city) async {
//     var response = await http.get(Uri.parse('https://api.open-meteo.com/v1/forecast?latitude=${city.latitude}&longitude=${city.longitude}&current_weather=true'));
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       return Weather.fromJson(jsonResponse['current_weather']);
//     } else {
//       throw Exception('Failed to load weather');
//     }
//   }

//   Future<List<Weather>> getCityListWeather(List<City> cityList) async {
//     List<Weather> weatherList = [];
//     for (var city in cityList) {
//       final weather = await fetchWeather(city);
//       weatherList.add(weather);
//     }
//     return weatherList;
//   }
// }





// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class WeatherService {
//   final String googleMapsApiKey = 'AIzaSyBesWtwEzxZg2LocAXeRz_4BEt_Z5Oyi7Y';

//   Future<City> searchCity(String cityName) async {
//     var response = await http.get(Uri.parse('https://maps.googleapis.com/maps/api/geocode/json?address=$cityName&key=$googleMapsApiKey'));
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       var coordinates = jsonResponse['results'][0]['geometry']['location'];
//       return City(name: cityName, latitude: coordinates['lat'], longitude: coordinates['lng']);
//     } else {
//       throw Exception('Failed to load city');
//     }
//   }

//   Future<Weather> fetchWeather(City city) async {
//     var response = await http.get(Uri.parse('https://api.open-meteo.com/v1/forecast?latitude=${city.latitude}&longitude=${city.longitude}&current_weather=true'));
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       return Weather.fromJson(jsonResponse);
//     } else {
//       throw Exception('Failed to load weather');
//     }
//   }
// }

