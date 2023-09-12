library my_home_page;
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Ejemplo de Table"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Table(
              border: TableBorder.all(color: Colors.deepOrange, width: 3.0),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: crearRows().toList(),
            ),],),),);}

  List<TableRow> crearRows(){
    List<TableRow> table =[];
    for(int i = 0; i <= 10; i++) {
      table.add(TableRow(
        children: crearCells(i).toList(),
        ));}
    return table;
  }

  List<Widget> crearCells(int i){
    List<Widget> row =[];
    for(int j = 0; j <= 5; j++) {
      row.add(
        TableCell(
          child: Container(
            color: Colors.lightBlue,
            child: Text('Elemento ($i, $j)'),
            ),));}
    return row;
  }}