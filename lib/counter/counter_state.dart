import 'package:flutter/foundation.dart';

class CounterState extends ChangeNotifier implements ValueListenable {
  int _counter = 0;

  void increment() {
    _counter++;
    notifyListeners();
  }

  @override
  get value => _counter;
}
