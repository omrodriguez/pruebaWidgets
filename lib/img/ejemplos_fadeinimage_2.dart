library ejemplos_fadeinimage_1;
import 'package:flutter/material.dart';

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
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/loading.gif', 
            image: 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Big_%26_Small_Pumkins.JPG'),
          ),
      ),
    );
  }
}