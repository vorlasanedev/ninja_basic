import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('coffee1'),
            Text('300'),
            Image.asset(
              'assets/images/backpack.png',
              width: 100,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            SizedBox(width: 50),
          ],
        ),
        Row(
          children: [
            Text('coffee1'),
            Text('300'),
            Image.asset(
              'assets/images/drum.png',
              width: 100,
              color: Colors.blue[100],
              colorBlendMode: BlendMode.multiply,
            ),
            SizedBox(width: 50),
          ],
        ),
        Row(
          children: [
            Text('coffee1'),
            Text('300'),
            Image.asset(
              'assets/images/guitar.png',
              width: 100,
              color: Colors.red[100],
              colorBlendMode: BlendMode.multiply,
            ),
            SizedBox(width: 50),
          ],
        ),
      ],
    );
  }
}
