library ejemplos_container;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(5.0),
                color: Colors.red.shade200,
                child: const Text("Texto 1"),),
              Container(
                padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.all(15.0),
                color: Colors.blue.shade200,
                child: const Text("Texto 2")),
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                color: Colors.green.shade200,
                transform: Matrix4.rotationZ(-0.2),
                child: const Text("Texto 3")),],
          ),),);}}


