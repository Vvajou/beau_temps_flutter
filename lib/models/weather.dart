// class Weather {
//   final double temperature;
//   final double windSpeed;
//   final double humidity;
//   final String condition; // Sunny, Cloudy, etc.

//   Weather({required this.temperature, required this.windSpeed, required this.humidity, required this.condition});

//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       temperature: json['temperature'],
//       windSpeed: json['windspeed'],
//       humidity: json['humidity'],
//       condition: json['condition'],
//     );
//   }
// }
class Weather {
  final double temperature;
  final double windSpeed;
  final double humidity;
  final String condition; // Sunny, Cloudy, etc.

  // Added these two constructors
  Weather.initial()
      : temperature = 0.0,
        windSpeed = 0.0,
        humidity = 0.0,
        condition = '';

  Weather.error()
      : temperature = 0.0,
        windSpeed = 0.0,
        humidity = 0.0,
        condition = 'Error';

  Weather({required this.temperature, required this.windSpeed, required this.humidity, required this.condition});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['temperature'],
      windSpeed: json['windspeed'],
      humidity: json['humidity'],
      condition: json['condition'],
    );
  }
}
