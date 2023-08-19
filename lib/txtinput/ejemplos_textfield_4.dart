library ejemplos_textfield_4;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textControler = TextEditingController();

  @override
  void dispose(){
    textControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos para limpiar TextField"),
      ),
      body: Center(
        child: SizedBox( width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              TextField(
                controller: textControler,
                onSubmitted: (value) =>  {
                  setState(() {textControler.clear();})},
              ),
              const Spacer(),
            ],),),),);}}
