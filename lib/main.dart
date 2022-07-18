import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/counter_provider.dart';
import 'package:provider_demo/providers/shopping_cart_provider.dart';
import 'package:provider_demo/screens/homepage.dart';
import 'package:provider_demo/screens/second_page.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CounterProvider(),),
          ChangeNotifierProvider(create: (context) => ShoppingCartProvider(),)
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second_page': (context) => const SecondPage()
      },
    );
  }
}

