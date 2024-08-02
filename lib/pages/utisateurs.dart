import 'package:essence_app/constantes/export.dart';
import 'package:essence_app/main.dart';
import 'package:flutter/material.dart';

// liste des utilisateurs
List<Map<String, dynamic>> users = [];

class Utisateurs extends StatefulWidget {
  const Utisateurs({super.key});

  @override
  State<Utisateurs> createState() => _UtisateursState();
}

var database = Database();

class _UtisateursState extends State<Utisateurs> {
  final nomControler = TextEditingController();
  final prenomControler = TextEditingController();
  final emailControler = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectAll();
  }

  // add new user=====================================================

  Future addUser(Map<String, dynamic> user) async {
    users.add(user);
    // ajout dune nouvelle utilisateur
    try {
      if (await database.openConnection()) {
        database.instertCollection("Users", user);
        logger.i("Ajout success");
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }

  void addNewUser(Map<String, String> newUser) async {
    await addUser(newUser);
  }

  //----------------------------------------------------------------

  // recuperation dans la base de donnes

  Future<void> selectAll() async {
    Database dbase = Database();
    var collection = db.collection('Users');
    if (await dbase.openConnection()) {
      var data = await collection.find().toList();
      setState(() {
        users = data;
      });
      await db.close();
    }
  }

  static final formkey = GlobalKey<FormState>();
// affichage du dialog
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
                    addNewUser(newUser);
                  });
                  Navigator.pop(context);
                  formkey.currentState!.reset();
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
          Mytopbar(
            title: "Utilisateurs",
            action: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active),
                tooltip: "Notification",
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
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
          Expanded(
            child: Container(
              // height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              // color: Colors.blue,
              child: SingleChildScrollView(
                child: DataTable(
                    // showCheckboxColumn: true,
                    showBottomBorder: true,
                    columnSpacing: 2,
                    columns: const [
                      'Profil',
                      'Noms',
                      // 'Prenom',
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
                              DataCell(CircleAvatar(
                                  child: Text(
                                      e["nom"].toString()[0].toUpperCase()))),
                              DataCell(Text(
                                  e['nom'].toString()[0].toUpperCase() +
                                      e['nom']
                                          .toString()
                                          .substring(1)
                                          .toLowerCase() +
                                      " " +
                                      e['prenom'].toString()[0].toUpperCase() +
                                      e['prenom']
                                          .toString()
                                          .substring(1)
                                          .toLowerCase())),

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
          )
        ]));
  }
}
