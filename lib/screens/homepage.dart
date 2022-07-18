import 'package:flutter/material.dart';

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
            Text("You have pushed the button this many time")
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
            },
            key: Key('decrement_floatingActionButton'),
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
            // used when user long clicks when accessibility is on
          ),
          const SizedBox(width: 15.0,),
          FloatingActionButton(
            onPressed: () {
            },
            key: Key('reset_floatingActionButton'),
            tooltip: 'decrement',
            child: const Icon(Icons.exposure_zero),
            // used when user long clicks when accessibility is on
          ),
          const SizedBox(width: 15.0,),
          FloatingActionButton(
            onPressed: () {
            },
            key: Key('increment_floatingActionButton'),
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
            // used when user long clicks when accessibility is on
          ),
        ],
      ),
    );
  }
}
