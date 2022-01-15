import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<String> {
  CounterCubit() : super('');

  set state(String value) {
    // state = value;
    emit(state += value);
  }

  void clear() => state = '';
}
