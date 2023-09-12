library ejemplos_numimput_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double valor = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Text('Volumen: ',),
                  const SizedBox(width: 15,),
                  Slider(
                    value: valor,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    label: valor.round().toString(),
                    secondaryTrackValue: (valor <= 75)? valor+25: 100,
                    secondaryActiveColor: Colors.amber,
                    onChanged: (value){
                      setState(() {
                        valor = value;
                    });}),],),),],),),);}}