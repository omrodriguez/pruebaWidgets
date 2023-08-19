library ejemplos_container_6;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200, height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                border: Border.all(width: 5),
              borderRadius: BorderRadius.circular(100),
              ),
              child: Text("Este es un ejemplo de texto en el contenedor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", 
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),),),),),);}}


