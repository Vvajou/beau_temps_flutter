import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/city.dart';

class CityRepository {
  final String baseUrl = "https://geocoding-api.open-meteo.com/v1/search";

  Future<List<City>> getCities(String name) async {
    var response = await http.get(Uri.parse("$baseUrl?name=$name"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<City> cities = data['results'].map<City>((item) => City.fromJson(item)).toList();
      return cities;
    } else {
      throw Exception('Failed to load cities');
    }
  }
}
