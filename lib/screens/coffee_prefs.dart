import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Text('coffee1'), Text('300'), SizedBox(width: 50)]),
        Row(children: [Text('coffee1'), Text('300'), SizedBox(width: 50)]),
        Row(children: [Text('coffee1'), Text('300'), SizedBox(width: 50)]),
      ],
    );
  }
}
