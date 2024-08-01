import 'package:essence_app/composants/myContainer.dart';
import 'package:flutter/material.dart';

class RapportPage extends StatelessWidget {
  const RapportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Mycontainer(
      state: true,
      color: Color(0xFFFFFFFF),
      child: Center(
        child: Text("Rapport"),
      ),
    );
  }
}
