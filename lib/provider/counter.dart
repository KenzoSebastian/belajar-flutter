import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _counter = 0;
  bool _showSnackbar = false;

  int get counter => _counter;
  bool get showSnackbar => _showSnackbar;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    _showSnackbar = false;
    
    if (_counter < 0) {
      _showSnackbar = true;
      _counter = 0;
    }
    notifyListeners();
  }
}