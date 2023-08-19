library ejemplos_flex;
import 'package:flutter/material.dart';

class EjemploFlex extends StatelessWidget {
  const EjemploFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ejemplo Center',
      home: Scaffold(
        body: Flex(
          direction: Axis.horizontal,
          children: [
            Text("Texto 1"),
            Text("Texto 2"),
            Text("Texto 3"),],
        ),));}}


