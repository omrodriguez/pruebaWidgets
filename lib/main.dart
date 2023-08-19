import 'package:flutter/material.dart';
import 'select/ejemplos_switch_1.dart';

void main() {
  runApp(
     const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos widgets',
      theme: ThemeData(
        colorScheme:  ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

