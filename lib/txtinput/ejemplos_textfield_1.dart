library textfield;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de TextFields"),
      ),
      body: const Center(
        child: SizedBox( width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              TextField(decoration: InputDecoration(
                hintText: 'Decorado por omisión',),),
              SizedBox(height: 5.0),
              TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Decorado con borde',),),
              SizedBox(height: 5.0),
              TextField(decoration: InputDecoration(
                labelText: "FieldText con label",),),
              SizedBox(height: 5.0),
              TextField(decoration: InputDecoration(
                hintText: "Este es el hint",
                labelText: "Esta es la etiqueta",),),
              SizedBox(height: 5.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Texto oculto",),),
              SizedBox(height: 5.0),
              TextField(decoration: InputDecoration(
                  icon: Icon(Icons.contact_mail),
                  labelText: "Campo con ícono",),),
              SizedBox(height: 5.0),
              TextField(enabled: false,
                decoration: InputDecoration(
                  labelText: "Campo deshabilitado",),),
              Spacer(),
            ],),),),);}}