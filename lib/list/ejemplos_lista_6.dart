library ejemplos_lista_6;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> albumes = 
    <String>["The Dark Side of the Moon", "Pet Sounds", 
            "OK Computer", "Who's next", "Nevermind", 
            "Off the Wall", "Blonde on Blonde", "Born to Run"];

  final List<String> cantante = 
    <String>["Pink Floyd", "The Beach Boys", "Radiohead", 
            "The Who", "Nirvana", "Michael Jackson",
            "Bob Dylan", "Bruce Springsteen"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de ListTile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: ListTile.divideTiles(context: context, tiles: crearLista(), color:Colors.amber).toList(),
        ),);}

  List<Widget> crearLista() {
    final List<Widget> lista = <Widget>[];
    for(int i = 0; i < albumes.length; i++ ){
      lista.add(
        ListTile(
          leading: const Icon(Icons.album),
          title: Text(albumes[i]),
          subtitle: Text(cantante[i]),
          trailing: const Icon(Icons.arrow_forward),
          textColor: Colors.white,
          tileColor: Colors.lightBlue,));
    }
    return lista;  
  }}

 