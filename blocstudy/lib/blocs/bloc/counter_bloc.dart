import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentCount = state.count;
      final incrementCount = currentCount + 1;
      return emit(CounterState(count: incrementCount));
    });

    on<Decrement>((event, emit) {
      final currentCount = state.count;
      final decrementCount = currentCount - 1;
      return emit(CounterState(count: decrementCount));
    });
  }
}
