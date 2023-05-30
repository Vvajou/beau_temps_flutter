import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/weather.dart';

class WeatherRepository {
  final String baseUrl = "https://api.open-meteo.com/v1/forecast";

  Future<Weather> getWeather(double latitude, double longitude) async {
    var response = await http.get(Uri.parse("$baseUrl?latitude=$latitude&longitude=$longitude&current_weather=true"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      Weather weather = Weather.fromJson(data['current_weather']);
      return weather;
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
