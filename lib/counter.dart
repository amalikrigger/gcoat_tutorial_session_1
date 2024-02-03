import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        backgroundColor: Colors.lightBlue,
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
      ),
    );
  }
}
