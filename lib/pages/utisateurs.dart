import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class Utisateurs extends StatefulWidget {
  const Utisateurs({super.key});

  @override
  State<Utisateurs> createState() => _UtisateursState();
}

class _UtisateursState extends State<Utisateurs> {
  final nomControler = TextEditingController();
  final prenomControler = TextEditingController();
  final emailControler = TextEditingController();
  List<Map<String, String>> users = [
    {
      "nom": "Emery",
      "prenom": 'ndaliko',
      "email": "emeryndalos@gmail.com",
    },
    {
      "prenom": 'lionel',
      "email": "lionel@gmail.com",
      "nom": "lionel",
    },
    {
      "prenom": 'muisa',
      "email": "winner@gmail.com",
      "nom": "tsongo",
    },
    {
      "nom": "proms",
      "prenom": 'ndaliko',
      "email": "promsndal@gmail.com",
    },
  ];

// add new user
  void addUser(Map<String, String> user) {
    users.add(user);
  }

  static final formkey = GlobalKey<FormState>();

  showDialogBox() => showDialog(
      context: context,
      builder: (context) => Form(
            key: formkey,
            child: Mydialogbox(
              nomControler: nomControler,
              prenomControler: prenomControler,
              emailControler: emailControler,
              // on user add
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Map<String, String> newUser = {
                    "nom": nomControler.text,
                    "prenom": prenomControler.text,
                    "email": emailControler.text
                  };

                  setState(() {
                    addUser(newUser);
                  });
                  Navigator.pop(context);
                }
              },
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return Mycontainer(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        state: true,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // barre haute
          const Mytopbar(),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                height: 50,
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 15,
                          )),

                      // counter: Icon(Icons.search),
                      border: const OutlineInputBorder(),
                      hintText: "Rechercher",
                      fillColor: Colors.white10),
                ),
              ),
              Expanded(child: Container()),
              Container(
                // padding: EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                height: 25,
                child: ElevatedButton(
                  onPressed: showDialogBox,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Nouveau")
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            // color: Colors.blue,
            child: SingleChildScrollView(
              child: DataTable(
                  showCheckboxColumn: true,
                  showBottomBorder: true,
                  columnSpacing: 5,
                  columns: const [
                    'Profil',
                    'Nom',
                    'Prenom',
                    'Email',
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
                            const DataCell(Icon(Icons.person)),
                            DataCell(Text(e['nom'].toString())),
                            DataCell(Text(e['prenom'].toString())),
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
          )
        ]));
  }
}
