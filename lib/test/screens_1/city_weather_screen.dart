import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/city_weather_bloc.dart';

class CityWeatherScreen extends StatelessWidget {
  final double latitude;
  final double longitude;

  CityWeatherScreen(this.latitude, this.longitude);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('City Weather')),
      body: BlocBuilder<CityWeatherBloc, CityWeatherState>(
        builder: (context, state) {
          if (state is CityWeatherLoading) {
            return CircularProgressIndicator();
          } else if (state is CityWeatherLoaded) {
            return Text('Temperature: ${state.weather.temperature}');
          } else {
            return Text('Something went wrong!');
          }
        },
      ),
    );
  }
}
