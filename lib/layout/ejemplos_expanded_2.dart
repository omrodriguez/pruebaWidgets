library ejemplos_expanded_2;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Row(
            children: [
              Expanded(flex: 1, child: Container(width: 70.0, height: 30.0,
                color: Colors.red.shade200,
                child: const Text("Texto 1"),),),
              Expanded(flex: 2, child: Container(width: 70.0, height: 30.0,
                  color: Colors.blue.shade200,
                  child: const Text("Texto 2")),),
              Expanded(flex: 3, child: Container(width: 70.0, height: 30.0,
                color: Colors.green.shade200,
                child: const Text("Texto 3")),),],
          ),),);}}


