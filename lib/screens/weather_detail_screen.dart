import 'package:flutter/material.dart';
import '../blocs/weather_bloc.dart';
import '../ui/weather_detail_card.dart';
import '../models/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherDetailScreen extends StatelessWidget {
  final WeatherBloc weatherBloc;

  WeatherDetailScreen({required this.weatherBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Details"),
      ),
      body: BlocBuilder<WeatherBloc, Weather>(
        bloc: weatherBloc,
        builder: (context, weather) {
          return WeatherDetailCard(weather: weather);
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import '../blocs/weather_bloc.dart';
// import '../ui/weather_detail_card.dart';
// import '../models/weather.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class WeatherDetailScreen extends StatelessWidget {
//   final WeatherBloc bloc;

//   WeatherDetailScreen({required this.bloc});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Weather Details"),
//       ),
//       body: BlocBuilder<WeatherBloc, Weather>(
//         bloc: bloc,
//         builder: (context, weather) {
//           return WeatherDetailCard(weather: weather);
//         },
//       ),
//     );
//   }
// }
