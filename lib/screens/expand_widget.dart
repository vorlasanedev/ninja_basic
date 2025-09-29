import 'package:flutter/material.dart';
import 'package:ninja_basic/screens/coffee_prefs.dart';

class ExpandWidget extends StatelessWidget {
  const ExpandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(20),
            child: Text('How i like my coffe...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/v904-nunny-010-f.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
