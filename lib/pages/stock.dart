import 'package:essence_app/constantes/export.dart';
// import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Mycontainer(
      state: true,
      color: Color(0xFFFFFFFF),
      child: Center(
        child: Text("stock"),
      ),
    );
  }
}
