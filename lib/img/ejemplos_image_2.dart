library ejemplos_image_1;
import 'package:flutter/material.dart';

class EjemploImageIcon extends StatelessWidget {
  const EjemploImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo imágenes"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 300,
          child: Image.network('http://ith.mx/logo_ith.jpg'),
          ),
      ),
    );
  }
}