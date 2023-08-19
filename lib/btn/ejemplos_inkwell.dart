library ejemplos_inkwell;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de botón InkWell"),
      ),
      body: Padding(padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Container (
                width: 100, height: 100,
                color: Colors.red,
                child: InkWell(
                  onTap: () => print("Evento onTap generado"),
              ),),
              const Spacer(),
            ],),),),);}}

