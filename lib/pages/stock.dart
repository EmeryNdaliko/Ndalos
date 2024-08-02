import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class Stock extends StatefulWidget {
  const Stock({super.key});

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  showdialog() =>
      showDialog(context: context, builder: (context) => const StockDialobox());

  @override
  Widget build(BuildContext context) {
    return Mycontainer(
      state: false,
      color: const Color(0xFFFFFFFF),
      child: Column(children: [
        const Mytopbar(title: "Stock disponible", action: []),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text('Nouvelle entree'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const StockDialobox(),
                  );
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text('Nouvelle sortie'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const StockDialobox(),
                    );
                  }),
            ],
          ),
        ),
        Expanded(
          child: Mycontainer(
            state: true,
            width: double.infinity,
            // color: Colors.blueAccent,
            child: SingleChildScrollView(
              child: DataTable(
                  // showCheckboxColumn: true,
                  showBottomBorder: true,
                  columnSpacing: 2,
                  columns: const [
                    '',
                    'Categorie',
                    // 'Prenom',
                    'Quantite',
                    'Edit'
                  ] //table headings
                      .map(
                        (e) => DataColumn(label: Text(e)),
                      )
                      .toList(),
                  rows: users
                      .map(
                        (e) => DataRow(
                          cells: [
                            //table row cells values
                            DataCell(CircleAvatar(
                                child: Text(
                                    e["nom"].toString()[0].toUpperCase()))),
                            DataCell(Text(
                                "${e['nom'].toString()[0].toUpperCase()}${e['nom'].toString().substring(1).toLowerCase()} ${e['prenom'].toString()[0].toUpperCase()}${e['prenom'].toString().substring(1).toLowerCase()}")),

                            // DataCell(Text()),
                            DataCell(Text(e['email'].toString())),
                            DataCell(
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                              ),
                            )
                          ],
                        ),
                      )
                      .toList()),
            ),
          ),
        ),
      ]),
    );
  }
}

class StockDialobox extends StatelessWidget {
  const StockDialobox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Column(
        children: [
          Text(
            "Ajouter une entrée",
            style: TextStyle(fontSize: 14),
          ),
          Divider()
        ],
      ),
      content: SizedBox(
        width: 300,
        height: 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.category),
                hintText: "Categorie",
              )),
              const SizedBox(height: 8),
              const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    hintText: "Quantite",
                  )),
              const SizedBox(height: 8),
              const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Designation")),
              const SizedBox(height: 8),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ajouter")))
            ],
          ),
        ),
      ),
    );
  }
}
