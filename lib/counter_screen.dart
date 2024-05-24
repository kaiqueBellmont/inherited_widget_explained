import 'package:flutter/material.dart';
import 'counter_widget.dart';

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Counter.of(context);

    return Text(
      '${counter?.count ?? 0}',
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
