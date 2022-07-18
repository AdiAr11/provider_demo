import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/counter_provider.dart';
import 'package:provider_demo/screens/second_page.dart';

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
                "${context.watch<CounterProvider>().count}"),
            const Counter(),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/second_page');
                },
                child: const Text("Go to Second Screen")
            )
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
          const SizedBox(
            width: 15.0,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
            key: const Key('reset_floatingActionButton'),
            tooltip: 'reset',
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            width: 15.0,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            key: const Key('increment_floatingActionButton'),
            tooltip: 'increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<CounterProvider>().count.toString(),
      style: const TextStyle(fontSize: 30.0),
    );
  }
}
