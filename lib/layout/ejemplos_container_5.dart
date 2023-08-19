library ejemplos_container_5;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          body: Center(
          child: Container(
            width: 200, height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              border: Border.all(width: 5),
            ),
          ),
        ),),);}}


