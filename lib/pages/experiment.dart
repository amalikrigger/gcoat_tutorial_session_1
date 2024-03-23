import 'package:flutter/material.dart';
import 'package:gcoat_tutorial_session_1/pages/tic_tac_toe.dart';

class Experiment extends StatelessWidget {
  const Experiment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightBlue,
      body: TicTacToe(),
    );
  }
}
