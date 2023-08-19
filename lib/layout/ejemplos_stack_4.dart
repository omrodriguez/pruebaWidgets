library ejemplos_stack_4;
import 'package:flutter/material.dart';

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 10,
                  child: Text("Texto Ejemplo",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.blueGrey.shade200,
                    ),),),
                Text("Texto Ejemplo", 
                  style: TextStyle(fontSize: 40,
                  foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.deepOrange),),
                Text("Texto Ejemplo",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.deepOrange.shade100,
                ),),],),
        ),),);}}


