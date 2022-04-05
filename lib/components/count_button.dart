import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback Pressed;
  final String text;

  const CountButton(
      {Key? key, required this.icon, required this.Pressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      onPressed: Pressed,
      label: Text(text),
    );
  }
}
