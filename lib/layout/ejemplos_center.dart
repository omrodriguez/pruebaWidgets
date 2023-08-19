library ejemplos_center;
import 'package:flutter/material.dart';

class EjemploCenter extends StatelessWidget {
  const EjemploCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Center',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text("Texto ejemplo")),),
    );
}}


