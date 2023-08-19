library ejemplos_togglebutton;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de Botón Segmentado"),
      ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text('Elige una lenguaje'),
              BotonesToggle(),
              Spacer(),
            ],),),
      );}}

const List<Widget> lenguajes = <Widget>[
    Text('Dart'),
    Text('JavaScript'),
    Text('Python'),
  ];

class BotonesToggle extends StatelessWidget {
  const BotonesToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final List<bool> seleccionados = <bool>[false, true, false];

    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: (int index) => print("Se seleccionón ${lenguajes[index]}"),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: Colors.red[700],
      selectedColor: Colors.white,
      fillColor: Colors.red[200],
      color: Colors.red[400],
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
      ),
      isSelected: seleccionados,
      children: lenguajes,
      );}}

