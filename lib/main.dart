import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';
import 'package:nav_bloc_app_tdc/ui/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const HomePage(),
      ),
    );
  }
}
