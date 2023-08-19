library ejemplos_expanded;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Row(
            children: [
              Container(width: 70.0, height: 30.0,
                color: Colors.red.shade200,
                child: const Text("Texto 1"),),
              Expanded(child: Container(width: 70.0, height: 30.0,
                  color: Colors.blue.shade200,
                  child: const Text("Texto 2")),),
              Container(width: 70.0, height: 30.0,
                color: Colors.green.shade200,
                child: const Text("Texto 3")),],
          ),),);}}


