library ejemplos_ciclovida;
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  MyWidget({super.key}) {
    print("Ejecución del constructor de StatefulWidget");
  }

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int contador = 0;
  bool vertical = true;

  _MyWidgetState(){
    print("Ejecución del construtor de State");
  }

  @override
  void initState() {
    print("Ejecución del método State.initState()");
    super.initState();
  }

  @override
  void didChangeDependencies(){
    print("Ejecución del método State.didChangeDependencies()");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(oldWidget) {
    print("Ejecución del método State.didUpdateWidget()");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate(){
    print("Ejecución del método State.deactivate()");
    super.deactivate();
  }

  @override
  void dispose(){
    print("Ejecución de método State.dispose()");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Ejecución del método State.build()");
    return Center(
        child: SizedBox( width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Flex(
                direction: vertical? Axis.vertical : Axis.horizontal,
                children: [
                Text("Presionado:\n $contador \nveces"),
                const SizedBox(width: 10.0,),
                ElevatedButton(onPressed: () => setState(() {
                  print("Ejecución del método State.setState()");
                  ++contador;
                }), 
                  child: const Text("Sumar uno"),),
              ],),
              const Spacer()
            ],),),);}}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool mostrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de ciclo de vida"),
      ),
      body: mostrar? MyWidget() : const Text("El widget está oculto"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState(() {
          mostrar = !mostrar;
        }),
        backgroundColor: Colors.amberAccent,
        label: Text(mostrar? "Ocultar widget" : "Mostrar widget"),
        icon: Icon(mostrar? Icons.hide_image : Icons.show_chart),),
    );
  }
}
