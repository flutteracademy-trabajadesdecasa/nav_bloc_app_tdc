import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_event.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeEvent>((event, emit) {
      if (event.randInt % 2 == 0) {
        /// LLAMADA A BASE DE DATOS

        emit(state.copyWith(appTheme: AppTheme.light));
      }
      if (event.randInt % 2 != 0) {
        emit(state.copyWith(appTheme: AppTheme.dark));
      }
    });
  }
}
