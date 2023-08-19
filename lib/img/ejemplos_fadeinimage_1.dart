library ejemplos_fadeinimage;
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class EjemploImageIcon extends StatelessWidget {
  const EjemploImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo FadeInImage"),
      ),
      body: Center(
        child: SizedBox(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Big_%26_Small_Pumkins.JPG'),
          ),
      ),
    );
  }
}