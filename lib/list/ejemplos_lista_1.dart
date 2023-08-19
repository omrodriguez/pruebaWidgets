library ejemplos_lista_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo lista simple"),
      ),
      body: ListView(
        itemExtent: 30,
        scrollDirection: Axis.vertical,
        children: const <Widget>[
          Text("Elemento 1"),
          Center(child: Text("Elemento 2")),
          Text("Elemento 3"),
        ],),);}}