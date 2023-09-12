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
        title: const Text("Ejemplo de DropdownMenu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Row (
              children: [
                DropdownMenu<LenguajePreferido>(
                  initialSelection: lenguajePreferido,
                  label: const Text("Lenguaje preferido"),
                  dropdownMenuEntries: 
                    lenguajes.keys.map<DropdownMenuEntry<LenguajePreferido>>(
                    (key) {
                      return DropdownMenuEntry<LenguajePreferido>(
                        value: key,
                        leadingIcon: const Icon(Icons.code),
                        trailingIcon: const Icon(Icons.favorite),
                        label: lenguajes[key]);
                    }).toList(),
                  onSelected: (LenguajePreferido? value) {
                    setState(() {
                      lenguajePreferido = value!;
                    });},),])],),),);}}