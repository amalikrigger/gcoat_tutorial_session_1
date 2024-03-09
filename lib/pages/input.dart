import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    String userName = myController.text;

    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greetingMessage,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(),
                    hintText: "Type your name..."),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: greetUser,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.lightBlue),
                  child: const Text('Tap'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
