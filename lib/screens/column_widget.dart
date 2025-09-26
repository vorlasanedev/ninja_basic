import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        /// /*center left right*/
        // crossAxisAlignment: CrossAxisAlignment.center,
        ////*start left column */
        // crossAxisAlignment: CrossAxisAlignment.start,
        ////*end right column */
        // crossAxisAlignment: CrossAxisAlignment.end,
        /// /*full column */
        crossAxisAlignment: CrossAxisAlignment.stretch,

        /// center top button
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Column Widget'),
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
