class City {
  final String name;
  final double latitude;
  final double longitude;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
  });
}

// import 'weather.dart';

// class City {
//   final String name;
//   final double latitude;
//   final double longitude;
//   Weather weather;

//   City(
//       {required this.name,
//       required this.latitude,
//       required this.longitude,
//       this.weather});

//   factory City.fromJson(Map<String, dynamic> json) {
//     return City(
//       name: json['name'],
//       latitude: json['latitude'],
//       longitude: json['longitude'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'latitude': latitude,
//       'longitude': longitude,
//     };
//   }
// }



// class City {
//   final String name;
//   final double latitude;
//   final double longitude;

//   City({
//     required this.name,
//     required this.latitude,
//     required this.longitude,
//   });

//   factory City.fromJson(Map<String, dynamic> json) {
//     return City(
//       name: json['name'],
//       latitude: json['latitude'],
//       longitude: json['longitude'],
//     );
//   }
// }
