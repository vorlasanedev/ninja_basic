import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  /// Example show text in debug console function for onPress button
  void increasedButton() {
    print('inc by 1');
  }

  void decreasedButton() {
    print('decr by 1');
  }

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
              width: 40,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),

            /// Button and event
            Expanded(child: SizedBox(width: 50)),
            FilledButton(onPressed: decreasedButton, child: Icon(Icons.remove)),
          ],
        ),
        Row(
          children: [
            Text('coffee1'),
            Text('300'),
            Image.asset(
              'assets/images/drum.png',
              width: 40,
              color: Colors.blue[100],
              colorBlendMode: BlendMode.multiply,
            ),

            /// Button and event
            Expanded(child: SizedBox(width: 50)),
            FilledButton(
              onPressed: () {
                print('ClickMe');
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        Row(
          children: [
            Text('coffee1'),
            Text('300'),
            Image.asset(
              'assets/images/guitar.png',
              width: 40,
              color: Colors.red[100],
              colorBlendMode: BlendMode.multiply,
            ),

            /// Button and event
            Expanded(child: SizedBox(width: 50)),
            TextButton(onPressed: increasedButton, child: Icon(Icons.add)),
          ],
        ),
      ],
    );
  }
}
