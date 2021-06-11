import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const buttonsColors = {
    'dark': Color.fromRGBO(82, 82, 82, 1),
    'default': Color.fromRGBO(112, 112, 112, 1),
    'operation': Color.fromRGBO(250, 158, 13, 1),
  };
  static const Dark = Color.fromRGBO(82, 82, 82, 1);
  static const Default = Color.fromRGBO(112, 112, 112, 1);
  static const Operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final String color;
  final void Function(String) cb;

  Button({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = 'default',
  });
  Button.operation({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = 'operation',
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 1, bottom: 1),
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            ),
          ),
          onPressed: () => cb(text),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonsColors[color]),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
