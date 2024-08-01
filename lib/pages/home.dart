import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Mycontainer(
      state: true,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // mot de bienvenue sur l'application
          Mytopbar(
            title: "",
            action: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active),
                tooltip: "Notification",
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blueAccent,
            child: const Text("Bienvenue sur App"),
          ), // affichage des utilisateurs

          const SizedBox(
            height: 10,
          ),
          Center(
            child: Wrap(
              children: [
                Mycontainer(
                  state: true,
                  width: 200,
                  height: 200,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Container(
                          width: double.maxFinite,
                          height: 50,
                          color: Colors.amber,
                          child: const Center(child: Text("Utilisateurs"))),
                      Expanded(
                        child: Center(
                          child: Text(
                            "${users.length}",
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Mycontainer(
                  state: true,
                  width: 200,
                  height: 200,
                  // color: Colors.amber,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "Fournissurs",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "Fournissurs",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
