import 'package:flutter/material.dart';
import '../models/city.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard({required this.city});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(city.name),
        subtitle: Text("Weather info goes here"), // Update this based on your Weather model
        onTap: () {
          // Handle onTap here, e.g. navigate to WeatherDetailScreen with this city
        },
      ),
    );
  }
}
