library checkbox_1;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool elegido = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de MaterialState"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: elegido,
                side: MaterialStateBorderSide.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return const BorderSide(color: Colors.green);
                  } else if (states.contains(MaterialState.hovered)) {
                    return const BorderSide(color: Colors.deepOrange);
                  } return null;
                  }),
                fillColor: MaterialStateColor.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.amber.shade100;
                    } else if (states.contains(MaterialState.selected)){
                      return Colors.lightGreen;
                    } return Colors.lightBlue;
                  }),
                onChanged: (value) {
                  setState(() {
                    elegido = value!;
                  });}),
              Text(elegido?'Verificado ': 'No verificado '),],),],),);}}