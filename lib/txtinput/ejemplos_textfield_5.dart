library ejemplos_textfield_5;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Texto con formato validado"),
      ),
      body: Center(
        child: SizedBox( width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Número de tarjeta'), 
                  border: OutlineInputBorder(),
                  helperText: 'XXXX-XXXX-XXXX-XXXX',
                  prefixIcon: Icon(Icons.credit_card),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]|-')),
                  CreditCardNumberFormatter(),
                ],
              ),
              const Spacer(),
            ],),),),);}}

class CreditCardNumberFormatter extends TextInputFormatter {
  final String ejemplo = 'XXXX-XXXX-XXXX-XXXX';
  final String separador = '-';

  CreditCardNumberFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if ( newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > ejemplo.length) return oldValue;
        if (newValue.text.length < ejemplo.length &&
            ejemplo[newValue.text.length - 1] == separador) {
              return TextEditingValue(
                text: '${oldValue.text}$separador${newValue.text.substring(newValue.text.length - 1)}',
                selection: TextSelection.collapsed(
                  offset: newValue.selection.end + 1,),
              );}}}
    return newValue;
  }}