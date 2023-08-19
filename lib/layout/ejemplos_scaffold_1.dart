library ejemplos_scaffold;
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
                    Text("Body Scaffold",
                        style: textStyle.titleLarge),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => print("¡Botón flotante presionado!"),
              child: const Icon(Icons.add_alert),),
        )
);}}


