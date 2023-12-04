import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_state.dart';
import 'package:nav_bloc_app_tdc/core/locator.dart/locator.dart';
import 'package:nav_bloc_app_tdc/core/router/app_router.dart';
import 'package:nav_bloc_app_tdc/ui/pages/home_page.dart';
import 'package:nav_bloc_app_tdc/ui/pages/login_page.dart';

void main() {
  levantarLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: localizacionBlocs<ThemeBloc>(),
      builder: (context, state) {
        return MaterialApp.router(
          // home: const HomePage(),

          theme: state.appTheme == AppTheme.light
              ? ThemeData.light()
              : ThemeData.dark(),

          //Rutas
          routerConfig: navegacion,
        );
      },
    );
  }
}
