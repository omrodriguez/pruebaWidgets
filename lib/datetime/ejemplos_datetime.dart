library my_home_page;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime fecha = DateTime.now();
  TimeOfDay hora = TimeOfDay.now();

  Future<void> _elegirFecha(BuildContext context) async {
    final DateTime? fechaElegida = await showDatePicker(
      context: context, 
      initialDate: fecha, 
      firstDate: DateTime(2022), 
      lastDate: DateTime(2122));
    if (fechaElegida != null && fechaElegida != fecha) {
      setState(() {
        fecha = fechaElegida;
      });}}

Future<void> _elegirHora(BuildContext context) async {
    final TimeOfDay? horaElegida = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now());
    if (horaElegida != null && horaElegida != hora) {
      setState(() {
        hora = horaElegida;
      });}}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de date-time picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'La fecha es: ${fecha.day}/${fecha.month}/${fecha.year}',
            ),
            const SizedBox(height: 15.0,),
            OutlinedButton(
              onPressed: () => _elegirFecha(context), 
              child: const Text("Elegir fecha")),
            const SizedBox(height: 20.0,),
            Text(
              'La hora es: ${hora.hour}:${hora.minute} hrs.',
            ),
            const SizedBox(height: 15.0,),
            OutlinedButton(
              onPressed: () => _elegirHora(context), 
              child: const Text("Elegir hora")),
          ],),),);}}