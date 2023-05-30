class City {
  final int id;
  final String name;
  final double latitude;
  final double longitude;

  City({required this.id, required this.name, required this.latitude, required this.longitude});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
