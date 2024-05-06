//berisi status aplikasi yang dapat berubah.
class CounterStates {}

class InitialState extends CounterStates {}

class UpdateState extends CounterStates {
  final int counter;
  UpdateState(this.counter);
}
