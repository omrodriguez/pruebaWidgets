library radiobutton_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum LenguajePreferido {dart, javascript, php, C, java, python }

class _MyHomePageState extends State<MyHomePage> {
  LenguajePreferido lenguajePreferido = LenguajePreferido.C;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de Radio button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          RadioListTile(
            value: LenguajePreferido.C, 
            groupValue: lenguajePreferido, 
            onChanged: (LenguajePreferido? value) => eligeLenguaje(value!),
            title: const Text("C/C++"),),
          RadioListTile(
            value: LenguajePreferido.dart, 
            groupValue: lenguajePreferido, 
            onChanged: (LenguajePreferido? value) => eligeLenguaje(value!),
            title: const Text("Dart"),),
          RadioListTile(
            value: LenguajePreferido.java, 
            groupValue: lenguajePreferido, 
            onChanged: (LenguajePreferido? value) => eligeLenguaje(value!),
            title: const Text("Java"),),
          RadioListTile(
            value: LenguajePreferido.javascript, 
            groupValue: lenguajePreferido, 
            onChanged: (LenguajePreferido? value) => eligeLenguaje(value!),
            title: const Text("JavaScript"),),
          RadioListTile(
            value: LenguajePreferido.php, 
            groupValue: lenguajePreferido, 
            onChanged: (LenguajePreferido? value) => eligeLenguaje(value!),
            title: const Text("PHP"),),
          RadioListTile(
            value: LenguajePreferido.python, 
            groupValue: lenguajePreferido, 
            onChanged: (LenguajePreferido? value) => eligeLenguaje(value!),
            title: const Text("Python"),),
        ],),);}

  void eligeLenguaje(LenguajePreferido lenguaje) {
    setState(() {
      lenguajePreferido = lenguaje;
    });}}