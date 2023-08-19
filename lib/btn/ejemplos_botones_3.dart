library ejemplos_botones_3;
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
            iconSize: 50,
            onPressed: () => {print('$nombre es favorito')}, 
            icon: const Icon(Icons.favorite)),
          IconButton(
            onPressed: () => {print('$nombre editado')}, 
            icon: const Icon(Icons.edit)),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.lime,
              shape: CircleBorder()),
            child: IconButton(
              onPressed: () => {print('$nombre eliminado')}, 
              icon: const Icon(Icons.delete)),
          ),]),);}}
