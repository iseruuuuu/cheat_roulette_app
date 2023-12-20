import 'package:flutter/material.dart';

class RouletteTextField extends StatelessWidget {
  const RouletteTextField({
    Key? key,
    required this.deviceSize,
    required this.onChanged,
  }) : super(key: key);

  final double deviceSize;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceSize,
      child: TextField(
        onSubmitted: onChanged,
        onChanged: onChanged,
        autocorrect: false,
        maxLength: 10,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
