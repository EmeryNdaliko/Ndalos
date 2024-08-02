import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const Mybutton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
