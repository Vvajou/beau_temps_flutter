import 'package:flutter_bloc/flutter_bloc.dart';

enum ErrorEvent { ErrorOccurred }

class ErrorHandlingBloc extends Bloc<ErrorEvent, String> {
  ErrorHandlingBloc() : super('');

  @override
  Stream<String> mapEventToState(ErrorEvent event) async* {
    if (event == ErrorEvent.ErrorOccurred) {
      yield 'An error occurred'; // replace this with actual error handling logic
    }
  }
}
