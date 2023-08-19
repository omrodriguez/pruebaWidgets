library ejemplos_row;
import 'package:flutter/material.dart';

class EjemploRow extends StatelessWidget {
  const EjemploRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ejemplo Center',
      home: Scaffold(
        body: Row(
          children: [
            Text("Texto 1"),
            Text("Texto 2"),
            Text("Texto 3"),],
        ),));}}


