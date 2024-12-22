import 'package:counter/app_state.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterState = AppState.of(context)?.counterState;
    return ValueListenableBuilder(
      valueListenable: counterState!,
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${counterState.value}",
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => counterState.increment(),
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
