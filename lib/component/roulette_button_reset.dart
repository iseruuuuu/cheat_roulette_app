import 'package:flutter/material.dart';

class RouletteButtonReset extends StatelessWidget {
  const RouletteButtonReset({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.grey,
        width: double.infinity,
        height: 60,
        child: const Center(
          child: Text(
            'データをセットしなおす',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
