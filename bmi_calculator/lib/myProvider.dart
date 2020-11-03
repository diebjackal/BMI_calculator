import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _age = 20;
  int get age => _age;

  int _height = 180;
  int get height => _height;

  int _weight = 60;
  int get weight => _weight;

  void incrementHeightValue(int value) {
    _height = value;
    notifyListeners();
  }

  void incrementWeightValue(int value) {
    _weight = value;
    notifyListeners();
  }

  void incrementAge() {
    _age++;
    if (_age > 120) {
      _age = 120;
    }
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    if (_age < 0) {
      _age = 0;
    }
    notifyListeners();
  }
}
