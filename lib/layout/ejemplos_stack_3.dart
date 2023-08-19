library ejemplos_stack_3;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(width: 130.0, height: 70.0,
                  color: Colors.red.shade200,
                  child: const Text("Texto 1"),),
                Container(width: 100.0, height: 50.0,
                  color: Colors.blue.shade200,
                  child: const Text("Texto 2")),
                Positioned( left: 10.0, bottom: 5.0,
                  child: Container(width: 70.0, height: 30.0,
                    color: Colors.green.shade200,
                    child: const Text("Texto 3")),
                ),],),
        ),),);}}


