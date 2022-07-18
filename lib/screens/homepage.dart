import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many time: "
                "${context.watch<CounterProvider>().count}")
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrement();
            },
            key: const Key('decrement_floatingActionButton'),
            tooltip: 'decrement',
            // used when user long clicks when accessibility is on
            child: const Icon(Icons.remove),

          ),
          const SizedBox(width: 15.0,),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
            key: const Key('reset_floatingActionButton'),
            tooltip: 'decrement',
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(width: 15.0,),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            key: const Key('increment_floatingActionButton'),
            tooltip: 'decrement',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
