import 'package:get_it/get_it.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_bloc.dart';

GetIt localizacionBlocs = GetIt.instance;

void levantarLocator() async {
  await registrarCubits();
}

registrarCubits() async {
  if (!localizacionBlocs.isRegistered<CounterCubit>()) {
    localizacionBlocs.registerLazySingleton(
      () => CounterCubit(),
    );
  }

  if (!localizacionBlocs.isRegistered<ThemeBloc>()) {
    localizacionBlocs.registerLazySingleton(
      () => ThemeBloc(),
    );
  }
}
