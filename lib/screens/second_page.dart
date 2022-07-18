import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/shopping_cart_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
            Text("${context.watch<ShoppingCartProvider>().count}"),
            Text("${context.watch<ShoppingCartProvider>().shoppingCart}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<ShoppingCartProvider>().addItem("Peach");
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
