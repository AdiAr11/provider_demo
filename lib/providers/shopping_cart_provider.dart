import 'package:flutter/material.dart';

class ShoppingCartProvider with ChangeNotifier {

  final List<String> _shoppingCart = ["apple", "banana", "peach"];

  List<String> get shoppingCart => _shoppingCart;
  int get count => _shoppingCart.length;

  void addItem(String item){
    _shoppingCart.add(item);
    notifyListeners();
  }


}