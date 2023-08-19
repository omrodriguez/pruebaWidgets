library ejemplos_toast_1;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        title: const Text("Ejemplos de Notificaciones SnackBar"),
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
            onPressed: () => mostrarMsg('$nombre es favorito'), 
            icon: const Icon(Icons.favorite_outline)),
          IconButton.filled(
            onPressed: () => mostrarMsg('$nombre editado'), 
            icon: const Icon(Icons.edit)),
          IconButton.filledTonal(
              onPressed: () => mostrarMsg('$nombre eliminado'), 
              icon: const Icon(Icons.delete_outline)),
          IconButton.outlined(
              onPressed: () => mostrarMsg('$nombre eliminado'), 
              icon: const Icon(Icons.cloud_outlined)),
          ]),);}
  
  void mostrarMsg(String msg) {
    Fluttertoast.showToast(msg: msg,
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: Colors.blueGrey.shade300,
      textColor: Colors.white,
      fontSize: 16.0);
  }}
