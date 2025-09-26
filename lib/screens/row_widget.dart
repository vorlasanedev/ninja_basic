import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        /// /*center left right*/
        crossAxisAlignment: CrossAxisAlignment.stretch,
        ////*start left column */
        // crossAxisAlignment: CrossAxisAlignment.start,
        ////*end right column */
        // crossAxisAlignment: CrossAxisAlignment.end,
        /// /*full column */
        // crossAxisAlignment: CrossAxisAlignment.center,

        /// center top button
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Row Widget'),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
            child: Text('C one'),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20),
            child: Text('C two'),
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(20),
            child: Text('C three'),
          ),
        ],
      ),
    );
  }
}
