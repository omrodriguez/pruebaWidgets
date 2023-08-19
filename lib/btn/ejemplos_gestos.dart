library ejemplos_gestos;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de botones"),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () => print("Evento onTap"),
            onDoubleTap: () => print("Evento onDoubleTap"),
            onVerticalDragEnd: 
              (DragEndDetails endDetails) => print("Evento onVerticalDragEnd"),
            onHorizontalDragEnd: 
              (DragEndDetails endDetails) => print("Evento onHorizontalDragEnd"),
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.amber,
              ),
              child: const Text("Realiza gestos"),
          ),),
),);}}

