import 'package:essence_app/constantes/export.dart';
import 'package:flutter/material.dart';

class Fournisseur extends StatelessWidget {
  const Fournisseur({super.key});

  //late  int  compteur;
  final int item = 5;

  @override
  Widget build(BuildContext context) {
    return Mycontainer(
      state: true,
      color: Colors.white,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 80,
              child: Container(
                height: 80,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Fournisseur ',
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
                                icon: const Icon(Icons.more_horiz),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 60,
                          child: Container(
                            height: 100,
                            width: 120,
                            color: const Color.fromARGB(169, 33, 66, 70),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 10,
                                  width: 40,
                                  color: Colors.cyan,
                                );
                              },
                              itemCount: item,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 40,
                          child: Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 120,
                            color: const Color.fromARGB(169, 134, 188, 230),
                            child: const Text("Retour Index"),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              )),
          Expanded(
              flex: 13,
              child: Container(
                  padding: const EdgeInsets.all(15),
                  height: 80,
                  width: 500,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(60, 60),
                              padding: const EdgeInsets.all(5),
                              backgroundColor: Colors.blue),
                          onPressed: () {},
                          child: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )))
        ],
      )),
    );
  }
}
