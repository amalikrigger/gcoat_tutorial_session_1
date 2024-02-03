import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF17171C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.34,
                width: double.infinity,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '3156.8',
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                            text: '7',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: '8',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
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
                            text: '4',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: '5',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
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
                            text: '1',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: '2',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
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
                            text: '0',
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
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
              )
            ],
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
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
      ),
    );
  }
}
