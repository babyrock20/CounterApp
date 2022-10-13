import 'package:flutter/material.dart';

class Counter1 extends StatefulWidget {
  const Counter1({Key? key}) : super(key: key);

  @override
  State<Counter1> createState() => _Counter1State();
}

int index = 0;

class _Counter1State extends State<Counter1> {
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
