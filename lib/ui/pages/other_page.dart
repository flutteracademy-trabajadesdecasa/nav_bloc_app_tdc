import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_bloc_app_tdc/bloc/counter_cubit/counter_cubit.dart';

class OtherPage extends StatelessWidget {
  final int counter;
  const OtherPage({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            child: const Icon(Icons.ac_unit_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FloatingActionButton(
            heroTag: 'incrementar',
            child: const Icon(Icons.plus_one),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).incrementar();
            },
          ),
        ],
      ),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Otra pagina",
              style: TextStyle(fontSize: 50),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
