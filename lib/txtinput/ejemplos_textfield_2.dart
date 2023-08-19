library ejemplos_textfield_2;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de Teclados"),
      ),
      body: const Center(
        child: SizedBox( width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                hintText: 'Teclado alfanumérico',),),
              SizedBox(height: 5.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                hintText: 'Teclado numérico',),),
                SizedBox(height: 5.0),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                hintText: 'Teclado telefónico',),),
              Spacer(),
            ],),),),);}}