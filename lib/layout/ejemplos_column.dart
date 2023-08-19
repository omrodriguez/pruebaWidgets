library ejemplos_column;
import 'package:flutter/material.dart';

class EjemploColumn extends StatelessWidget {
  const EjemploColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ejemplo Center',
      home: Scaffold(
        body: Column(
          children: [
            Text("Texto 1"),
            Text("Texto 2"),
            Text("Texto 3"),],
        ),));}}


