import 'package:counter/counter/counter_screen.dart';
import 'package:counter/app_state.dart';
import 'package:counter/counter/counter_state.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterState counterState = CounterState();
    return MaterialApp(
      home: AppState(
        counterState: counterState,
        child: const CounterScreen(),
      ),
    );
  }
}
