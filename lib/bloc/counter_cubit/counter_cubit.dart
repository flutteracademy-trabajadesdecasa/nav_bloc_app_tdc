import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void incrementar() {
    final nuevoEstado = state.copyWith(counter: state.counter + 1);
    emit(nuevoEstado);
  }

  void decrementar() {
    final nuevoEstado = state.copyWith(counter: state.counter - 1);
    emit(nuevoEstado);
  }
}
