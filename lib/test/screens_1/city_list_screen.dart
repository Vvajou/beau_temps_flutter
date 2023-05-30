import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/city_list_bloc.dart';

class CityListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('City List')),
      body: BlocBuilder<CityListBloc, CityListState>(
        builder: (context, state) {
          if (state is CityListLoading) {
            return CircularProgressIndicator();
          } else if (state is CityListLoaded) {
            return ListView.builder(
              itemCount: state.weatherList.length,
              itemBuilder: (context, index) => ListTile(
                title: Text('Temperature: ${state.weatherList[index].temperature}'),
                onTap: () {
                  // Navigate to city weather detail screen
                },
              ),
            );
          } else {
            return Text('Something went wrong!');
          }
        },
      ),
    );
  }
}
