library ejemplos_progress_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
    with TickerProviderStateMixin {

  late AnimationController controlador;
  double valor = 0;

  @override
  void initState() {
    controlador = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      )..addListener(() {
        setState(() {
          valor = controlador.value;});});
    controlador.repeat(reverse: true);
    super.initState();}

  @override
  void dispose() {
    controlador.dispose();
    super.dispose();}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de barra de progreso"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Barra de progreso determinado',
              style: TextStyle(fontSize: 18, color: Colors.blue),),
            SizedBox( height: 15,
              child: LinearProgressIndicator(
                value: controlador.value,
                color: Colors.lightGreen,
                backgroundColor: Colors.amber.shade100,),),
            Text("Valor: $valor", style: 
              const TextStyle(fontSize: 20, color: Colors.blue),
            )],),),);}}