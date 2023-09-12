library dropdownbutton_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum LenguajePreferido {dart, javascript, php, C, java, python }
Map lenguajes = {
  LenguajePreferido.dart: "Dart",
  LenguajePreferido.javascript: "JavaScript",
  LenguajePreferido.php: "PHP",
  LenguajePreferido.C: "C/C++",
  LenguajePreferido.java: "Java",
  LenguajePreferido.python: "Python" 
};

class _MyHomePageState extends State<MyHomePage> {
  LenguajePreferido lenguajePreferido = LenguajePreferido.C;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de DropdownButton"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Row (
              children: [
                const Text("Lenguaje preferido: ", 
                        style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(width: 10,),
                DropdownButton<LenguajePreferido>(
                  value: lenguajePreferido,
                  icon: const Icon(Icons.arrow_circle_down),
                  elevation: 15,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepOrange),
                  onChanged: (LenguajePreferido? value) {
                    setState(() {
                      lenguajePreferido = value!;
                    });},
                  items: lenguajes.keys.map<DropdownMenuItem<LenguajePreferido>>(
                    (key) {
                      return DropdownMenuItem<LenguajePreferido>(
                        value: key,
                        child: Text(lenguajes[key]),);
                    }).toList(),
                ),])],),),);}}