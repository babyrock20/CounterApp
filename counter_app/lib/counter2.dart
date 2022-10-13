import 'package:flutter/material.dart';

class Counter2 extends StatefulWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  State<Counter2> createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  int index = 0;
  void _incrementCounter() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(child: Text('Counter: $index')),
        ElevatedButton(
            onPressed: () {
              _incrementCounter();
            },
            child: const Text('increment me!'))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
