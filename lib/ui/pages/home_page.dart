import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_state.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/theme_bloc/theme_event.dart';
import 'package:nav_bloc_app_tdc/core/locator.dart/locator.dart';
import 'package:nav_bloc_app_tdc/core/router/app_router.dart';
import 'package:nav_bloc_app_tdc/ui/pages/other_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      bloc: localizacionBlocs<CounterCubit>(),
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Text(
              '${state.counter}',
              style: const TextStyle(fontSize: 50.0),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniStartFloat,
          floatingActionButton: Row(
            children: [
              FloatingActionButton(
                heroTag: 'incrementar',
                child: const Icon(Icons.plus_one),
                onPressed: () {
                  //Aqui uso el context
                  // BlocProvider.of<CounterCubit>(context).incrementar();

                  //Aqui uso la info de get_it
                  localizacionBlocs<CounterCubit>().incrementar();

                  final int randIntUser = Random().nextInt(10);

                  ///ESTRUCTURA DE BLOC
                  // context.read<ThemeBloc>().add(
                  //       ChangeThemeEvent(randInt: randIntUser),
                  //     );

                  localizacionBlocs<ThemeBloc>().add(
                    ChangeThemeEvent(randInt: randIntUser),
                  );
                },
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: 'decrementar',
                child: const Icon(Icons.remove),
                onPressed: () {
                  // BlocProvider.of<CounterCubit>(context).decrementar();
                  localizacionBlocs<CounterCubit>().decrementar();
                },
              ),
              Spacer(),
              FloatingActionButton(
                child: const Icon(Icons.ac_unit_rounded),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return OtherPage();
                  //     },
                  //   ),
                  // );

                  context.goNamed(AppRoutes.other.name);
                },
              ),
              const SizedBox(width: 50),
            ],
          ),
        );
      },
    );
  }
}
