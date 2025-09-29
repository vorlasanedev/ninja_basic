import 'package:flutter/material.dart';

class CommonStyleButton extends StatelessWidget {
  const CommonStyleButton({
    super.key,
    required this.child,
    required this.onPressed,
  });
  final Widget child;
  final void Function() onPressed;
  // final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,

      style: TextButton.styleFrom(
        backgroundColor: Colors.brown[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: child,
    );
  }
}
