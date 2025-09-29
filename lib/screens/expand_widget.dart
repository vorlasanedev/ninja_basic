import 'package:flutter/material.dart';
import 'package:ninja_basic/screens/coffee_prefs.dart';
import 'package:ninja_basic/utils/common_style_text.dart';

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
            child: CommonStyleText(text: 'How i like coffee...'),
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
