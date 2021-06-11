import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/keyboard.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  void _onPressed(String command) {
    setState(() {
      memory.appyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: [
        Display(memory.value),
        Keyboard(_onPressed),
      ],
    ));
  }
}
