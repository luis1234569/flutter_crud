// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:grupo_5_b_/routes/routes.dart';
import 'package:grupo_5_b_/themes/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Logot2.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: const Text('Inicio'))
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 0, 0).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3), // changes position of shadow
                          )
                        ],
                        color: Color.fromARGB(255, 240, 250, 248),
                        border: Border.all(
                            color: Color.fromARGB(255, 57, 91, 100))),
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 190,
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: 50.0,
                            icon: const Icon(Icons.list_alt_rounded),
                            color: Color.fromARGB(255, 57, 91, 100),
                            onPressed: () {
                              Navigator.pushNamed(context,'request-form');
                            },
                          ),
                          const Text(
                            "Formulario",
                            style: TextStyle(fontSize: 18),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "Agregar nueva solicitud.",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 0, 0).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        )
                      ],
                      color: Color.fromARGB(255, 231, 246, 242),
                      border: Border.all(
                          color: const Color.fromARGB(255, 57, 91, 100))),
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 190,
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 50.0,
                          icon: const Icon(Icons.folder_special),
                          color: Color.fromARGB(255, 57, 91, 100),
                          onPressed: () {
                            Navigator.pushNamed(context, 'request-list');
                          },
                        ),
                        const Text(
                          "Peticiones",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Listar las solicitudes registradas.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
