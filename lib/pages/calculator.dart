import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF17171C),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '3156.8',
                  style: TextStyle(
                    fontSize: 75,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CalculatorButton(
                        text: 'C',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: '+/-',
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: '%',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: '/',
                        color: Color(0xFF5A32E7),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '7',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '8',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '9',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: 'x',
                        color: Color(0xFF5A32E7),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '4',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '5',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '6',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: '-',
                        color: Color(0xFF5A32E7),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '1',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '2',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '3',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: '+',
                        color: Color(0xFF5A32E7),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '0',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        color: Color(0xFF2E2F38),
                        text: '.',
                      ),
                    ),
                    Expanded(
                      child: CalculatorButton(
                        text: '=',
                        color: Color(0xFF5A32E7),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.text,
    this.color = const Color(0xFF4D505F),
    this.fontSize = 32,
  });

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 8,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                24,
              ),
            ),
          ),
        ),
        onPressed: () => print(text),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
