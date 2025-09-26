import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 200,
      color: Colors.amber,
      padding: EdgeInsets.all(20),
      // margin: EdgeInsets.only(left: 40),
      margin: EdgeInsets.fromLTRB(40, 20, 0, 0),

      child: Text(
        'Hellow Container',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
