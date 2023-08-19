library ejemplos_estadoapp;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EstadoApp extends ChangeNotifier {
  bool _temaAzul = false;

  void setTemaAzul(bool temaAzul) {
    _temaAzul = temaAzul;
    notifyListeners();
  }

  bool getTemaAzul() {return _temaAzul;}
}

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

  @override
  Widget build(BuildContext context) {
    ThemeData tema = Theme.of(context);
    var estado = context.watch<EstadoApp>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: tema.colorScheme.inversePrimary,
        title: const Text("Estado local de ToggleButton"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 5,),
            Text('Elige un lenguaje', style: tema.textTheme.titleSmall),
            const SizedBox(height: 5,),
            ToggleButtons(
              direction: vertical ? Axis.vertical : Axis.horizontal,
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < seleccionados.length; i++) {
                    seleccionados[i] = i == index;
                  }});},
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              selectedBorderColor: tema.colorScheme.tertiary,
              selectedColor: tema.colorScheme.secondary,
              fillColor: tema.colorScheme.inversePrimary,
              color: tema.colorScheme.onBackground,
              constraints: const BoxConstraints(
                minHeight: 40.0,
                minWidth: 80.0,
              ),
              isSelected: seleccionados,
              children: lenguajes,
            ),
            Consumer<EstadoApp>(
              builder: (context, estado, child) {
                if (estado.getTemaAzul() && child != null) {
                  return child;
                } else {
                  return const SizedBox.shrink();
                }
              },
              child: Container(
                width: 150, height: 50,
                decoration: BoxDecoration(
                  color: tema.colorScheme.inversePrimary,
                  border: Border.all(width: 5.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("El tema es azul", 
                    style: TextStyle(color: tema.colorScheme.onPrimary),),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                estado.setTemaAzul(!estado.getTemaAzul());
              },
              child: estado.getTemaAzul()? 
                const Text("Botones salmón") 
                : const Text("Botones azul"),
            ),
            const Spacer(),
          ],),),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            vertical = !vertical;
          });
        },
        icon: const Icon(Icons.screen_rotation_outlined),
        label: Text(vertical? 'Horizontal' : 'Vertical'),
      ),);}}