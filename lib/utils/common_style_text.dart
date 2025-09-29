import 'package:flutter/material.dart';

class CommonStyleText extends StatelessWidget {
  const CommonStyleText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[900],
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
