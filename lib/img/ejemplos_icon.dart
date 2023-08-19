library ejemplos_cachednetworkimage;
import 'package:flutter/material.dart';

class EjemploImageIcon extends StatelessWidget {
  const EjemploImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo Icons"),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              Icon(Icons.search, opticalSize: 5,),
              Text("search"),
            ],),
            Row(children: [
              Icon(Icons.settings, opticalSize: 5,),
              Text("setings"),
            ],),
            Row(children: [
              Icon(Icons.favorite, opticalSize: 5,),
              Text("favorite"),
            ],),
            Row(children: [
              Icon(Icons.help, opticalSize: 5,),
              Text("help"),
            ],),
            Row(children: [
              Icon(Icons.thumb_up, opticalSize: 5,),
              Text("thumb_up"),
            ],),
          ],),),);}}