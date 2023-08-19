library ejemplos_theme;
import 'package:flutter/material.dart';

class EjemploTextos extends StatelessWidget {
  const EjemploTextos({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData tema = Theme.of(context);
    var textStyle = tema.textTheme;
    var colorScheme = tema.colorScheme;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Ejemplo de uso de Text")),
            body: DefaultTextStyle(
              style: textStyle.titleLarge!,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Display Large", 
                      style: textStyle.displayLarge,),
                    Text("Headline Large",
                        style: textStyle.headlineLarge,),
                    Text("Title Large",
                        style: textStyle.titleLarge),
                    Text("Label Large",
                        style: textStyle.labelLarge?.copyWith(
                               color: colorScheme.onPrimary,
                               backgroundColor: colorScheme.primary),),
                    Text("Label medium",
                        style: textStyle.labelMedium?.copyWith(
                               color: colorScheme.onSecondary,
                               backgroundColor: colorScheme.secondary),),
                    Text("Label small",
                        style: textStyle.labelSmall?.copyWith(
                               color: colorScheme.onTertiary,
                               backgroundColor: colorScheme.tertiary),),
                  ],),),)));}}


