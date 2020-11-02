import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _age = 18;
  int get age => _age;

  int _incrementValue;
  MyProvider([this._incrementValue]);

  int _counter = 0;
  int get counter => _counter;

  int get incrementValue => _incrementValue;

  set incrementValue(int value) {
    _incrementValue = value;
    notifyListeners();
  }

  void increment() {
    _counter += _incrementValue;
    notifyListeners();
  }

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }
}
