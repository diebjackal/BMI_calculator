import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _age = 18;
  int get age => _age;

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }
}
