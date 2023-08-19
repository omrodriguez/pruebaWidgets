library ejemplos_estadoefimero;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BotonesToggle();
  }}

const List<Widget> lenguajes = <Widget>[
    Text('Dart'), Text('JavaScript'), Text('Python'), Text("C/C++"), 
    Text("Swfit"),
  ];

class BotonesToggle extends StatefulWidget {
  const BotonesToggle({super.key});
  @override
  State<BotonesToggle> createState() => _BotonesToggleState();
}

class _BotonesToggleState extends State<BotonesToggle> {
    final List<bool> seleccionados = <bool>[false, true, false, false, false];
    bool vertical = false;
    bool temaAzul = false;
    ThemeData? tema;

  @override
  Widget build(BuildContext context) {
    tema = temaAzul? ThemeData(
                      colorScheme: ColorScheme.fromSeed(
                          seedColor: Colors.blueGrey),
                      elevatedButtonTheme: ElevatedButtonThemeData(
                          style: ElevatedButton.styleFrom(
                            textStyle: tema?.textTheme.titleSmall,
                            backgroundColor: Colors.lightBlue.shade200),),)
                    : Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tema?.colorScheme.inversePrimary,
        title: const Text("Estado local de ToggleButton"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 5,),
            Text('Elige un lenguaje', style: tema?.textTheme.titleSmall),
            const SizedBox(height: 5,),
            ToggleButtons(
              direction: vertical ? Axis.vertical : Axis.horizontal,
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < seleccionados.length; i++) {
                    seleccionados[i] = i == index;
                  }});},
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              selectedBorderColor: tema?.colorScheme.primary,
              selectedColor: tema?.colorScheme.inversePrimary,
              fillColor: tema?.colorScheme.primaryContainer,
              color: tema?.colorScheme.tertiary,
              constraints: const BoxConstraints(
                minHeight: 40.0,
                minWidth: 80.0,
              ),
              isSelected: seleccionados,
              children: lenguajes,
            ),
            const Spacer(),
            ElevatedButton(
              style: tema?.elevatedButtonTheme.style,
              onPressed: () {
                setState(() {
                  temaAzul = !temaAzul;
                });},
              child: temaAzul? 
                const Text("Botones salmón") 
                : const Text("Botones azul"),
            ),
            const Spacer(),
          ],),),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            vertical = !vertical;
          });},
        icon: const Icon(Icons.screen_rotation_outlined),
        label: Text(vertical? 'Horizontal' : 'Vertical'),
        backgroundColor: tema?.colorScheme.inversePrimary,
      ),);}}