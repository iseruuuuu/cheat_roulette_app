import 'package:flutter/material.dart';

class RouletteText extends StatelessWidget {
  const RouletteText({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
