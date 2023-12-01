import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_state.dart';
import 'package:nav_bloc_app_tdc/ui/pages/other_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
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
                  BlocProvider.of<CounterCubit>(context).incrementar();
                },
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: 'decrementar',
                child: const Icon(Icons.remove),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrementar();
                },
              ),
              Spacer(),
              FloatingActionButton(
                child: const Icon(Icons.ac_unit_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OtherPage(
                          counter: state.counter,
                        );
                      },
                    ),
                  );
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
