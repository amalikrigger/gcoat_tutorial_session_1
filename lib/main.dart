import 'package:flutter/material.dart';
import 'package:gcoat_tutorial_session_1/calculator.dart';

import 'counter.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: const [
          Calculator(),
          Counter(),
        ],
      ),
    );
  }
}
