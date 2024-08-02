import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

void main() async {
  Database data = Database();
  if (await data.openConnection()) {
    logger.i("La connexion reussi");

    runApp(const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // le variables
  final Color selecetedColor = const Color.fromARGB(
      255, 255, 240, 240); // la couleur de selection de l'icone de menu

  // liste de pages a naviguer

  List<Widget> page = [
    const HomePage(),
    const Fournisseur(),
    const Stock(),
    const RapportPage(),
    const Utisateurs(),
    const Parametres()
  ];
  bool? index = true;
  int curentIndex = 0;

  void selected(value) {
    setState(() {
      curentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Row(
          children: [
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                    // color: Colors.amber,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DrawerHeader(
                          // decoration: BoxDecoration(color: Colors.blueAccent),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person),
                              Text(
                                "Emery ndalos",
                                // style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),

                  // conteneur de menu de navigation

                  SizedBox(
                    // color: Colors.green,
                    height: 350,
                    child: Column(
                      children: [
                        ListTile(
                          selectedTileColor: selecetedColor,
                          selectedColor: Colors.black,
                          selected: curentIndex == 0,
                          dense: true,
                          leading: const Icon(Icons.home),
                          title: const Text("Acceuil"),
                          onTap: () {
                            selected(0);
                          },
                        ),
                        ListTile(
                          selectedTileColor: selecetedColor,
                          dense: true,
                          selected: curentIndex == 1,
                          leading: const Icon(CupertinoIcons.tag_solid),
                          title: const Text("Fournisseur"),
                          onTap: () {
                            selected(1);
                          },
                        ),
                        ListTile(
                          selectedTileColor: selecetedColor,
                          dense: true,
                          selectedColor: Colors.black,
                          selected: curentIndex == 2,
                          leading: const Icon(Icons.account_tree_sharp),
                          title: const Text("Stock"),
                          onTap: () {
                            selected(2);
                          },
                        ),
                        ListTile(
                          selectedTileColor: selecetedColor,
                          dense: true,
                          selectedColor: Colors.black,
                          selected: curentIndex == 3,
                          leading: const Icon(Icons.book),
                          title: const Text("Rapport"),
                          onTap: () {
                            selected(3);
                          },
                        ),
                        ListTile(
                          selectedTileColor: selecetedColor,
                          dense: true,
                          selectedColor: Colors.black,
                          selected: curentIndex == 4,
                          leading: const Icon(Icons.group_sharp),
                          title: const Text("Utilisateurs"),
                          onTap: () {
                            selected(4);
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.purple,
                    width: double.infinity,
                    child: Column(
                      children: [
                        ListTile(
                          selectedTileColor: selecetedColor,
                          dense: true,
                          selectedColor: Colors.black,
                          selected: curentIndex == 5,
                          leading: const Icon(Icons.settings),
                          title: const Text("Parametre"),
                          onTap: () {
                            selected(5);
                          },
                        ),
                        ListTile(
                          selectedTileColor: selecetedColor,
                          dense: true,
                          selectedColor: Colors.black,
                          selected: curentIndex == 6,
                          leading: const Icon(Icons.logout),
                          title: const Text("Se deconnecter"),
                          onTap: () {
                            deactivate();
                            print('object');
                          },
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              flex: 80,
              child: page[curentIndex],
            ),
          ],
        ),
      ),
    );
  }
}
