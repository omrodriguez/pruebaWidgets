library ejemplos_botones_4;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> items= [];
    for(int i = 1; i < 4; i++ ){
      items.add(const Spacer());
      items.add(GetItem(item: i));
    }
    items.add(const Spacer());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de IconButton"),
      ),
      body: Padding(padding: const EdgeInsets.all(4.0),
        child: Column(
          children: items,
        ),),);}}

class GetItem extends StatelessWidget {
  const GetItem({super.key, required this.item});
  final int item;

  @override
  Widget build(BuildContext context) {
    var nombre = 'Elemento $item';
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          const Spacer(),
          Text(nombre),
          const Spacer(),
          IconButton(
            onPressed: () => {print('$nombre es favorito')}, 
            icon: const Icon(Icons.favorite_outline)),
          IconButton.filled(
            onPressed: () => {print('$nombre editado')}, 
            icon: const Icon(Icons.edit)),
          IconButton.filledTonal(
              onPressed: () => {print('$nombre eliminado')}, 
              icon: const Icon(Icons.delete_outline)),
          IconButton.outlined(
              onPressed: () => {print('$nombre eliminado')}, 
              icon: const Icon(Icons.cloud_outlined)),
          ]),);}}
