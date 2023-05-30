import 'package:flutter/material.dart';
import '../blocs/city_search_bloc.dart';
import '../ui/city_card.dart';
import '../models/city.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CitySearchScreen extends StatelessWidget {
  final CitySearchBloc bloc;

  CitySearchScreen({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Search"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              bloc.add(CitySearchEvent(value));
            },
          ),
          BlocBuilder<CitySearchBloc, List<City>>(
            bloc: bloc,
            builder: (context, cities) {
              return ListView.builder(
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  return CityCard(city: cities[index]);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
