library ejemplos_grid_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, List<String>> albumes = {
    "album":   ["The Dark Side of the Moon", "Pet Sounds", 
               "OK Computer", "Who's next", "Nevermind", 
               "Off the Wall", "Blonde on Blonde", "Born to Run"],
    "cantante": ["Pink Floyd", "The Beach Boys", "Radiohead", 
               "The Who", "Nirvana", "Michael Jackson",
               "Bob Dylan", "Bruce Springsteen"]};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        padding: const EdgeInsets.all(10),
        children: crearLista(),
        ),);}

  List<Widget> crearLista() {
    final List<Widget> lista = <Widget>[];
    for(int i = 0; i < albumes["album"]!.length; i++ ){
      lista.add(Card(
          color: Colors.deepOrange.shade200,
          child: GridTile(
            header: const Icon(Icons.album),
            footer: const Icon(Icons.arrow_back),
            child: Center(child: Text(albumes["album"]!.elementAt(i))),
          ),));
      lista.add(Card(
          color: Colors.amber,
          child: GridTile(
            header: const Icon(Icons.music_note),
            footer: const Icon(Icons.arrow_forward),
            child: Center(child: Text(albumes["cantante"]!.elementAt(i))),
          ),));}
    return lista;}}

 