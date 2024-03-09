import 'package:flutter/material.dart';

class Calculator2 extends StatefulWidget {
  const Calculator2({super.key});

  @override
  State<Calculator2> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171C),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '3156.8',
                  style: TextStyle(
                    fontSize: 75,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    children: const [
                      Calculator2Button(
                        text: 'C',
                      ),
                      Calculator2Button(
                        text: '+/-',
                        fontSize: 20,
                      ),
                      Calculator2Button(
                        text: '%',
                      ),
                      Calculator2Button(
                        text: '/',
                        color: Color(0xFF5A32E7),
                      ),
                      Calculator2Button(
                        text: '7',
                      ),
                      Calculator2Button(
                        text: '8',
                      ),
                      Calculator2Button(
                        text: '9',
                      ),
                      Calculator2Button(
                        text: 'x',
                        color: Color(0xFF5A32E7),
                      ),
                      Calculator2Button(
                        text: '4',
                      ),
                      Calculator2Button(
                        text: '5',
                      ),
                      Calculator2Button(
                        text: '6',
                      ),
                      Calculator2Button(
                        text: '-',
                        color: Color(0xFF5A32E7),
                      ),
                      Calculator2Button(
                        text: '1',
                      ),
                      Calculator2Button(
                        text: '2',
                      ),
                      Calculator2Button(
                        text: '3',
                      ),
                      Calculator2Button(
                        text: '+',
                        color: Color(0xFF5A32E7),
                      ),
                      Calculator2Button(
                        text: '0',
                      ),
                      Calculator2Button(
                        text: '.',
                      ),
                      Calculator2Button(
                        text: '=',
                        color: Color(0xFF5A32E7),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Calculator2Button extends StatelessWidget {
  const Calculator2Button({
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
    return ElevatedButton(
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
    );
  }
}
