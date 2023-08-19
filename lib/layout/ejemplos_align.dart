library ejemplos_align;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          body: Center(
            child: Container(
              width: 150, height: 150,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                border: Border.all(width: 5),
              ),
              child: const Align(
                alignment: Alignment(-0.5, -0.5),
                child: Icon(Icons.android, size: 50,),
              )),),),);}}


