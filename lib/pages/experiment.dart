import 'package:flutter/material.dart';

class Experiment extends StatelessWidget {
  const Experiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.lightBlue[800],
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.lightBlue[700],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightBlue[600],
              ),
            ],
          ),
        ),);
  }
}
