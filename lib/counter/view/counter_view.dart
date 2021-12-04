import 'package:counter_bloc/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: textTheme.headline2,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          )
        ],
      ),
    );
  }
}
