library ejemplos_padding;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo Padding"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150, height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.blue),),
              child: const Padding(
                padding: EdgeInsets.all(10.0), 
                child: Text('Hola',
                style: TextStyle(backgroundColor: Colors.red),),),
              ),],),),);}}