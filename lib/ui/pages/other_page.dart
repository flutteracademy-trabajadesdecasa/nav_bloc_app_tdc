import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_state.dart';
import 'package:nav_bloc_app_tdc/core/locator.dart/locator.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      bloc: localizacionBlocs<CounterCubit>(),
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: Row(
            children: [
              FloatingActionButton(
                child: const Icon(Icons.ac_unit_rounded),
                onPressed: () {
                  // Navigator.pop(context);
                  context.pop();
                },
              ),
              FloatingActionButton(
                heroTag: 'incrementar',
                child: const Icon(Icons.plus_one),
                onPressed: () {
                  // BlocProvider.of<CounterCubit>(context).incrementar();
                  localizacionBlocs<CounterCubit>().incrementar();
                },
              ),
            ],
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.amber,
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
          body: Center(
            child: Column(
              children: [
                const Text(
                  "Otra pagina",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  '${state.counter}',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
