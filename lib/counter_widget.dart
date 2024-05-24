import 'package:flutter/material.dart';

class Counter extends InheritedWidget {
  final int count;

  Counter({required this.count, required Widget child}) : super(child: child);

  static Counter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Counter>();
  }

  @override
  bool updateShouldNotify(Counter oldWidget) {
    return oldWidget.count != count;
  }
}
