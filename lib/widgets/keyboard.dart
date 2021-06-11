import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button(text: 'AC', color: 'dark', big: true, cb: cb),
            Button(text: '%', color: 'dark', cb: cb),
            Button.operation(text: '/', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'x', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '0', big: true, cb: cb),
            Button(text: ',', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
