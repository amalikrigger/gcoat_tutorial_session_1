import 'package:flutter/material.dart';
import 'package:gcoat_tutorial_session_1/pages/todo.dart';

import 'calculator.dart';
import 'calculator2.dart';
import 'counter.dart';
import 'experiment.dart';
import 'input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Home Page'),
      ),
      body: PageView(
        children: [
          const Experiment(),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                'settingsPage',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.black,
              ),
              child: const Text('Go to settings page'),
            ),
          ),
          const Todo(),
          const Counter(),
          const Calculator(),
          const Input(),
          const Calculator2(),
        ],
      ),
    );
  }
}
