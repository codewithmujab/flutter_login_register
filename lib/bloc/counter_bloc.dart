//berisi logika bisnis aplikasi Flutter.
//Ini menangani peristiwa yang dipicu oleh pengguna dan memperbarui statusnya

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_register/bloc/counter_event.dart';
import 'package:flutter_login_register/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  int counter = 0;

  CounterBloc() : super(InitialState()) {
    on<NumberIncreaseEvent>(onNumberIncrease);
    on<NumberDecreaseEvent>(onNumberDecrease);
  }

  void onNumberIncrease(
      NumberIncreaseEvent event, Emitter<CounterStates> emit) async {
    counter = counter + 1;
    emit(UpdateState(counter));
  }

  void onNumberDecrease(
      NumberDecreaseEvent event, Emitter<CounterStates> emit) async {
    counter = counter - 1;
    emit(UpdateState(counter));
  }
}
