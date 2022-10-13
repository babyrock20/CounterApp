import 'package:flutter/material.dart';

class Counter3 extends StatefulWidget {
  const Counter3({Key? key}) : super(key: key);

  @override
  State<Counter3> createState() => _Counter3State();
}

class _Counter3State extends State<Counter3> {
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
