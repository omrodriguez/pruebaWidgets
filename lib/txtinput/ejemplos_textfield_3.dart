library ejemplos_textfield_3;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String chTexto = "";
  String subTexto = "";
  String evento = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de Eventos TextField"),
      ),
      body: Center(
        child: SizedBox( width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              TextField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Teclado previous',),
                onTap: () {
                  setState(() { evento = 'onTap';});},
                onTapOutside: (point) {
                  setState(() { evento = 'onTapOutside';});},
                onChanged: (value) => {
                  setState(() {evento = 'onChange'; 
                               chTexto = value.toString();})},
                onEditingComplete: () => {
                  setState(() {evento = 'onEditingComplete';})},
                onSubmitted: (value) =>  {
                  setState(() {evento = 'onSubmited'; 
                               subTexto = value.toString();})},
              ),
              const SizedBox(height: 20,),
              LineaTexto(label: "Evento", texto: evento),
              const SizedBox(height: 10.0),
              LineaTexto(label: "Texto cambiado", texto: chTexto),
              const SizedBox(height: 10.0),
              LineaTexto(label: "Texto sometido", texto: subTexto),
              const Spacer(),
            ],),),),);}}

class LineaTexto extends StatelessWidget {
  const LineaTexto({super.key, required this.label, required this.texto});
  final String label, texto;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade100,
      width: 300,
      alignment: Alignment.centerLeft,
      child: Row (
        children: [
          Text('$label: ', 
            style: const TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(width: 10.0,),
          Text(texto),
        ],),);}}