class Weather {
  final double temperature;

  Weather({
    required this.temperature,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['current_weather']['temperature'],
    );
  }
}


// // models/weather.dart

// class Weather {
//   final double temperature;
//   final int weatherCode;
//   final double windSpeed;
//   final double windDirection;

//   Weather({
//     required this.temperature,
//     required this.weatherCode,
//     required this.windSpeed,
//     required this.windDirection,
//   });

//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       temperature: json['current_weather']['temperature'],
//       weatherCode: json['current_weather']['weathercode'],
//       windSpeed: json['current_weather']['windspeed'],
//       windDirection: json['current_weather']['winddirection'],
//     );
//   }
// }
