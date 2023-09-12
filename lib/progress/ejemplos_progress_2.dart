library ejemplos_progress_2;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de progreso circular"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Circulo de progreso indeterminado',
              style: TextStyle(fontSize: 18, color: Colors.blue),),
            SizedBox( height: 50, width: 50,
              child: CircularProgressIndicator(
                color: Colors.lightGreen,
                backgroundColor: Colors.amber.shade100,
                ),),],),),);}}