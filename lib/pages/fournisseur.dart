import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class Fournisseur extends StatelessWidget {
  const Fournisseur({super.key});

  @override
  Widget build(BuildContext context) {
    return Mycontainer(
      state: true,
      color: Colors.white,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 80,
              child: Container(
                height: 80,
                color: Colors.blue,
              )),
          Expanded(
              flex: 20,
              child: Container(
                height: 80,
                width: 100,
                color: Color.fromARGB(255, 35, 57, 116),
                child: FloatingActionButton(
                  onPressed: () {},
                ),
              ))
        ],
      )),
    );
  }
}
