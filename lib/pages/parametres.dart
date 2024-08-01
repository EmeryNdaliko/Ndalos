import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class Parametres extends StatelessWidget {
  const Parametres({super.key});

  @override
  Widget build(BuildContext context) {
    return const Mycontainer(
        color: Colors.white,
        state: true,
        child: Center(
          child: Text("Setting"),
        ));
  }
}
