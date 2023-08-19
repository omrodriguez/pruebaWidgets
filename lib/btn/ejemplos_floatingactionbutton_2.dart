library ejemplos_floatingactionbutton_2;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de Botón flotante"),
      ),
      body: Scaffold(
        body: const Center(
          child: Text("Botón para agregar un contacto..."),
        ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => print("Se agregó un nuevo contacto"),
        backgroundColor: Colors.amberAccent,
        icon: const Icon(Icons.contact_phone),
        label: const Text("Agregar"),),
      ),);}}

