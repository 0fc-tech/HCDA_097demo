import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() =>
    runApp(BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocApp(),
    ));

class BlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Container(
                child: Text('$state'),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<CounterCubit>().inc(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void inc() => emit(state + 1);
}
