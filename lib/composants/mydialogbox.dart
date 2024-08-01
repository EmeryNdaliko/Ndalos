import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class Mydialogbox extends StatefulWidget {
  final VoidCallback? onPressed;
  final TextEditingController? nomControler;
  final TextEditingController? prenomControler;
  final TextEditingController? emailControler;
  const Mydialogbox({
    super.key,
    this.nomControler,
    this.prenomControler,
    this.emailControler,
    required this.onPressed,
  });

  @override
  State<Mydialogbox> createState() => _MydialogboxState();
}

class _MydialogboxState extends State<Mydialogbox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        scrollable: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.add),
            Text("Ajouter un utilisateur"),
          ],
        ),
        content: SizedBox(
          // color: Colors.blue,
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Divider(),
                TextFormField(
                  controller: widget.nomControler,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Entrer un nom valide";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Nom", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: widget.prenomControler,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Entrer un prenom valide";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Prenom", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: widget.emailControler,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email invalide";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "@gmail.com", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purpleAccent,
                          foregroundColor: Colors.white),
                      onPressed: widget.onPressed,
                      child: const Text("Ajouter")),
                )
              ],
            ),
          ),
        ));
  }
}
