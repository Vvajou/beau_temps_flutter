import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/weather.dart';
import '../models/city.dart';

class ApiService {
  final String baseUrl = "https://api.open-meteo.com/v1";

  Future<Weather> getWeather(double latitude, double longitude) async {
    final response = await http.get(Uri.parse('$baseUrl/forecast?latitude=$latitude&longitude=$longitude&current_weather=true'));

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  Future<City> getCity(String cityName) async {
    final response = await http.get(Uri.parse('https://geocoding-api.open-meteo.com/v1/search?name=$cityName'));

    if (response.statusCode == 200) {
      return City.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load city');
    }
  }
}
