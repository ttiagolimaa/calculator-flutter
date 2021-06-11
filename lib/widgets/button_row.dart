import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow({
    required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold([], (list, button) {
          list.isEmpty
              ? list.add(button)
              // : list.addAll([SizedBox(width: 1), button]);
              : list.add(button);
          return list;
        }),
      ),
    );
  }
}
