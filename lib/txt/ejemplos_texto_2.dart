library ejemplos_texto_2;
import 'package:flutter/material.dart';

class EjemploTextos extends StatelessWidget {
  const EjemploTextos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Ejemplo de uso de Text")),
        body: const DefaultTextStyle(
          style:  TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Texto 1: estilo default"),
                Text("Texto 2: blanco sobre negro", 
                  style: TextStyle(backgroundColor: Colors.black, 
                                   color: Colors.white)),
                Text("Texto 3: letra grande en negritas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                Text("Texto 4: decorado subrallado rojo",
                  style: TextStyle(decoration: TextDecoration.underline, 
                                   decorationColor: Colors.redAccent,
                                   decorationStyle: TextDecorationStyle.dashed,
                                   decorationThickness: 3.0)),
              ],
            ),
          ),
        )
      )
    );
  }
}

