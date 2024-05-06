import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  //File ini mendefinisikan CounterCubit, yang merupakan perluasan dari Cubit .
  //Ini mengatur keadaan counter kami.
  //Status awal diatur ke 0, dengan fungsi kenaikan dan penurunan untuk memperbarui status.
  void increment() => emit(state + 3);
  void decrement() => emit(state - 1);
}
