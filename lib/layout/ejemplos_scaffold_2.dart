library ejemplos_scaffold_2;
import 'package:flutter/material.dart';

class EjemploScaffold extends StatelessWidget {
  const EjemploScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData tema = Theme.of(context);
    var textStyle = tema.textTheme;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("AppBar Scaffold")),
            body: DefaultTextStyle(
              style: textStyle.titleLarge!,
              child: Center(
                child: 
                    Text("Body Scaffold", style: textStyle.titleLarge),
              ),
            ),
            backgroundColor: Colors.lightBlue.shade100,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Container(height: 50.0,)),
            floatingActionButton: FloatingActionButton(
              onPressed: () => print("¡Botón flotante presionado!"),
              child: const Icon(Icons.add_alert),),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ));
}}


