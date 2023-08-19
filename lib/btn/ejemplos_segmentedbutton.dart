library ejemplos_segmentedbutton;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplos de Botón Segmentado"),
      ),
      body: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text('Elige una calificación'),
              SeleccionSimple(habilitado: true),
              Spacer(),
              Text('Elige una calificación (deshabilitado)'),
              SeleccionSimple(habilitado: false),
              Spacer(),
            ],),),),
      );}}

enum Calificacion { excelente, notable, bien, regular, deficiente }

class SeleccionSimple extends StatelessWidget {
  const SeleccionSimple({super.key, this.habilitado = true});
  final bool habilitado;

  @override
  Widget build(BuildContext context) {
    Calificacion calif = Calificacion.excelente;

    return SegmentedButton<Calificacion>(
      segments: const <ButtonSegment<Calificacion>>[
        ButtonSegment<Calificacion>(
          value: Calificacion.excelente,
          label: Text("Excelente"),
          icon: Icon(Icons.thumb_up),
        ),
        ButtonSegment<Calificacion>(
          value: Calificacion.notable,
          label: Text("Notable"),
          icon: Icon(Icons.thumb_up_alt),
        ),
        ButtonSegment<Calificacion>(
          value: Calificacion.bien,
          label: Text("Bien"),
          icon: Icon(Icons.thumb_up_alt_outlined),
        ),
        ButtonSegment<Calificacion>(
          value: Calificacion.regular,
          label: Text("Regular"),
          icon: Icon(Icons.thumbs_up_down),
        ),
        ButtonSegment<Calificacion>(
          value: Calificacion.deficiente,
          label: Text("Deficiente"),
          icon: Icon(Icons.thumb_down),
        ),
      ],
      selected: <Calificacion>{calif},
      onSelectionChanged: habilitado? (Set<Calificacion> newSelection) {} : null,
    );}}
