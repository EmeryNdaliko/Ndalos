// import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class Fournisseur extends StatelessWidget {
  Fournisseur({super.key});

  @override
  Widget build(BuildContext context) {
    return Mycontainer(
      state: true,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Mytopbar(title: "fourniseur", action: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_active))
          ]),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Noms')),
                    DataColumn(label: Text('Adresse')),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text("Telephone")),
                    DataColumn(label: Text("Action")),
                  ],
                  rows: fourniseurs
                      .map(
                        (e) => DataRow(
                          cells: [
                            DataCell(Text(e['noms'].toString())),
                            DataCell(Text(e['adresse'].toString())),
                            DataCell(Text(e['email'].toString())),
                            DataCell(Text(e['telephone'].toString())),
                            DataCell(Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.edit_outlined
                                      // color: Colors.red,
                                      ),
                                ),
                                const SizedBox(width: 20),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(CupertinoIcons.delete,
                                        color: Colors.red))
                              ],
                            )),
                          ],
                        ),
                      )
                      .toList()),
            ),
          ))
        ],
      ),
    );
  }
}

// liste de fourniseurs

final List<Map<String, dynamic>> fourniseurs = [
  {
    "noms": "Emery",
    "adresse": "goma",
    "email": "emeryndalos@gmail.com",
    "telephone": "0973459191"
  },
  {
    "noms": "Emery",
    "adresse": "goma",
    "email": "emeryndalos@gmail.com",
    "telephone": "0973459191"
  }
];
