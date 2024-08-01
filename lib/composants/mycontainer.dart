import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  final bool state;
  final Color? color;
  final double? width;
  final double? height;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const Mycontainer({
    super.key,
    this.width,
    this.height,
    required this.child,
    this.color,
    required this.state,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              // state definie si notre conteneur aura de l'ombre ou pas
              // cest une variable[state] boleenne
              color:
                  state ? const Color(0x16000000) : Colors.white.withOpacity(0),
              offset: const Offset(1, 1),
              blurRadius: NavigationToolbar.kMiddleSpacing,
            )
          ],
          color: color ?? Colors.white,
        ),
        child: child);
  }
}
