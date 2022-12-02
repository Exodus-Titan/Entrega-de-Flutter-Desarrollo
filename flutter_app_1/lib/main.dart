import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/pantallas/pantalla_cursos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corsi',
      home: PantallaCursos(),
      theme: ThemeData(
        primaryColor: Color(0xFF5F5FFF),
        accentColor: Color(0XFF030047),
        highlightColor: Color(0XFFB7B7D2),

        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4369F5),
          ),
          bodyText1: TextStyle(
            fontSize: 20.0,
            color: Color(0XFFB7B7D2),
          )
        ),
      ),
    );
  }
}