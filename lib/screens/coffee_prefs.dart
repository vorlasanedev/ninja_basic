import 'package:flutter/material.dart';
import 'package:ninja_basic/utils/common_style_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int coffee_qty = 1;
  int sugar_qty = 1;

  /// Example show text in debug console function for onPress button
  void increasedButton() {
    setState(() {
      coffee_qty = coffee_qty < 5 ? coffee_qty + 1 : 0;
    });
  }

  void increasedSuga() {
    setState(() {
      sugar_qty = sugar_qty < 5 ? sugar_qty + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Sugar'),
            Expanded(child: SizedBox()),
            if (sugar_qty == 0) Text('No Sugar'),
            for (int i = 0; i < sugar_qty; i++)
              Image.asset(
                'assets/images/backpack.png',
                width: 40,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            /// Button and event
            Expanded(child: SizedBox()),
            CommonStyleButton(child: Icon(Icons.add), onPressed: increasedSuga),
            // FilledButton(onPressed: increasedSuga, child: Icon(Icons.add)),
          ],
        ),
        Row(
          children: [
            Text('coffe'),
            Text('$coffee_qty'),
            Image.asset(
              'assets/images/drum.png',
              width: 40,
              color: Colors.blue[100],
              colorBlendMode: BlendMode.multiply,
            ),

            /// Button and event
            Expanded(child: SizedBox(width: 50)),
            FilledButton(onPressed: increasedButton, child: Icon(Icons.add)),
          ],
        ),
        Row(
          children: [
            Text('coffee coo'),
            Text('$coffee_qty'),
            Image.asset(
              'assets/images/guitar.png',
              width: 40,
              color: Colors.red[100],
              colorBlendMode: BlendMode.multiply,
            ),

            /// Button and event
            Expanded(child: SizedBox(width: 50)),
            TextButton(
              onPressed: () {
                setState(() {
                  coffee_qty = coffee_qty + 1;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
