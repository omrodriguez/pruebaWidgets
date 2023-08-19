library ejemplos_card;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("Ejemplo Card"),),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        body: Card(
          child: Row(
              children: [
                Container(width: 70.0, height: 30.0,
                  color: Colors.red.shade200,
                  child: const Text("Texto 1"),),
                Container(width: 70.0, height: 30.0,
                    color: Colors.blue.shade200,
                    child: const Text("Texto 2")),
                Container(width: 70.0, height: 30.0,
                  color: Colors.green.shade200,
                  child: const Text("Texto 3")),],
            ),
        ),),);}}


