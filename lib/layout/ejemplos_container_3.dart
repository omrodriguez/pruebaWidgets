library ejemplos_container_3;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Column(
            children: [
              Container(
                color: Colors.red.shade200,
                child: const Text("Texto 1"),),
              Container(
                color: Colors.blue.shade200,
                child: const Text("Texto 2")),
              Container(
                color: Colors.green.shade200,
                child: const Text("Texto 3")),],
          ),),);}}


