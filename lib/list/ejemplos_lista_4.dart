library ejemplos_lista_3;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> nombreColor = 
    <String>["Azul", "Verde", "Amarillo", "Naranja", "Rojo"];
  final List<Color> colores = 
    <Color>[Colors.blue, Colors.green, 
            Colors.yellow, Colors.orange, Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo lista custom()"),
      ),
      body: ListView.custom(
        padding: const EdgeInsets.all(10),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: colores.length,
          (BuildContext context, int index) {
            return Container(
              height: 30,
              color: colores[index],
              child: Center(child: Text(nombreColor[index])),);
          },),),);}}
