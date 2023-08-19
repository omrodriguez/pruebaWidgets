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
        title: const Text("Ejemplo lista separated()"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: colores.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 30,
            color: colores[index],
            child: Center(child: Text(nombreColor[index])),);
        },
        separatorBuilder: (context, index) => 
          const Divider(height: 5, color: Colors.black,),
        ),);}}