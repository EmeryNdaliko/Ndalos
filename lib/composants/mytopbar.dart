import 'package:flutter/material.dart';

class Mytopbar extends StatelessWidget {
  const Mytopbar({super.key});
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
              const Text(
                'Utilisateurs',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_active),
                    tooltip: "Notification",
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                  ),
                  // IconButton(
                  //   icon: const Row(
                  //     children: [Icon(Icons.person_add_sharp), Text("Ajouter")],
                  //   ),
                  //   onPressed: () {},
                  // )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
