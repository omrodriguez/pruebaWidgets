library ejemplos_texto_3;
import 'package:flutter/material.dart';

class EjemploTextos extends StatelessWidget {
  const EjemploTextos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Ejemplo de uso de Text")),
        body: DefaultTextStyle(
          style:  const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Texto 1: estilo default"),
                const Text("Texto 2: blanco sobre negro", 
                  style: TextStyle(backgroundColor: Colors.black, 
                                   color: Colors.white)),
                const Text("Texto 3: letra grande en negritas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                RichText(
                      text: const TextSpan(
                        text: "Texto 4: decorado ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          decorationStyle: TextDecorationStyle.dashed,
                          decorationThickness: 3.0,
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: "subrayado ",
                              style: TextStyle(
                                  fontSize: 40, color: Colors.deepPurple ,
                                  fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: "rojo",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
              ],
            ),
          ),
        )
      )
    );
  }
}

