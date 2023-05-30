import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/city.dart';
import '../repositories/city_repository.dart';

class CitySearchEvent {
  final String searchString;

  CitySearchEvent(this.searchString);
}

class CitySearchBloc extends Bloc<CitySearchEvent, List<City>> {
  final CityRepository cityRepository;

  CitySearchBloc(this.cityRepository) : super([]);

  @override
  Stream<List<City>> mapEventToState(CitySearchEvent event) async* {
    try {
      var cities = await cityRepository.getCities(event.searchString);
      yield cities;
    } catch (_) {
      yield []; // handle error
    }
  }
}


// enum CitySearchEvent { SearchCity }

// class CitySearchBloc extends Bloc<CitySearchEvent, List<City>> {
//   final CityRepository cityRepository;

//   CitySearchBloc(this.cityRepository) : super([]);

//   @override
//   Stream<List<City>> mapEventToState(CitySearchEvent event) async* {
//     if (event == CitySearchEvent.SearchCity) {
//       try {
//         var cities = await cityRepository.getCities();
//         yield cities;
//       } catch (_) {
//         yield []; // handle error
//       }
//     }
//   }
// }
