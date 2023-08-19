library ejemplos_container_2;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Column(
            children: [
              Container(width: 100.0, height: 50.0,
                color: Colors.red.shade200,
                child: const Text("Texto 1"),),
              Container(width: 100.0, height: 50.0,
                color: Colors.blue.shade200,
                child: const Text("Texto 2")),
              Container(width: 100.0, height: 50.0,
                color: Colors.green.shade200,
                child: const Text("Texto 3")),],
          ),),);}}


