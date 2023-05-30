import 'package:flutter/material.dart';
import '../models/weather.dart';

class WeatherDetailCard extends StatelessWidget {
  final Weather weather;

  WeatherDetailCard({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("${weather.temperature}°"), // Update this based on your Weather model
        // Add more information based on your Weather model
      ),
    );
  }
}
