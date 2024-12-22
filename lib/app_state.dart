import 'package:counter/counter/counter_state.dart';
import 'package:flutter/material.dart';

class AppState extends InheritedWidget {
  const AppState({
    super.key,
    required this.counterState,
    required super.child,
  });
  final CounterState counterState;

  static AppState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppState>();
  }

  @override
  bool updateShouldNotify(AppState oldWidget) {
    return oldWidget.counterState != counterState;
  }
}
