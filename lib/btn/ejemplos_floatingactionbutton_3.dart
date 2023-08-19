library ejemplos_floatingactionbutton_3;
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
        body: Center(
          child: Column(
            children: [
              Row( 
                children: [
                  const Spacer(),
                  const Text("small"),
                  const Spacer(),
                  FloatingActionButton.small(
                    onPressed: () => print("Se agregó un nuevo contacto"),
                    backgroundColor: Colors.amberAccent,
                    child: const Icon(Icons.contact_phone),),
                  const Spacer(),
                ],),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  const Text("regular"),
                  const Spacer(),
                  FloatingActionButton(
                    onPressed: () => print("Se agregó un nuevo contacto"),
                    backgroundColor: Colors.amberAccent,
                    child: const Icon(Icons.contact_phone),),
                  const Spacer(),
                ],),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  const Text("regular"),
                  const Spacer(),
                  FloatingActionButton.large(
                    onPressed: () => print("Se agregó un nuevo contacto"),
                    backgroundColor: Colors.amberAccent,
                    child: const Icon(Icons.contact_phone),),
                  const Spacer(),
                ],),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  const Text("small"),
                  const Spacer(),
                  FloatingActionButton.extended(
                    onPressed: () => print("Se agregó un nuevo contacto"),
                    backgroundColor: Colors.amberAccent,
                    icon: const Icon(Icons.contact_phone),
                    label: const Text("Agregar"),),
                  const Spacer(),
                ],),
            ],),),),);}}

