library ejemplos_botones;
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
      body: const Padding(padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Spacer(),
          GrupoBotones(habilitado: true),
          Spacer(),
          GrupoBotones(habilitado: false),
          Spacer(),
        ],),),);}}

class GrupoBotones extends StatelessWidget {
  const GrupoBotones({super.key, required this.habilitado});
  final bool habilitado;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = 
          habilitado? () {print("Boton presionado");} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(onPressed: onPressed, 
            child: const Text("ElevatedButton")),
          FilledButton(onPressed: onPressed, 
            child: const Text("FilledButton")),
          FilledButton.tonal(onPressed: onPressed, 
            child: const Text("FilledButton.tonal")),
          OutlinedButton(onPressed: onPressed, 
            child: const Text("OutlinedButton")),
          TextButton(onPressed: onPressed, 
            child: const Text("TextButton")),
        ]),);}}