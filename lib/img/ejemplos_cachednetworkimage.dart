library ejemplos_icon;
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EjemploImageIcon extends StatelessWidget {
  const EjemploImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo Cached Network Image"),
      ),
      body: Center(
        child: SizedBox(
          child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Big_%26_Small_Pumkins.JPG'),
          ),),);}}