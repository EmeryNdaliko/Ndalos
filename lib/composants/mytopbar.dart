import 'package:flutter/material.dart';

class Mytopbar extends StatelessWidget {
  final String title;
  final List<Widget> action;
  const Mytopbar({
    super.key,
    required this.title,
    required this.action,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 50,
          color: const Color(0xA9DEF0FE),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Row(children: action)
            ],
          ),
        ),
      ],
    );
  }
}
