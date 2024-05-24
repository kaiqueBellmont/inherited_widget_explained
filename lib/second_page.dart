import 'package:flutter/material.dart';
import 'counter_widget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Counter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text(
          'Counter value: ${counter?.count ?? 0}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
