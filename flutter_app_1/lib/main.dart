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
        primaryColor: Color(0xFF2196F3),
        accentColor: Color(0XFF030047),
        highlightColor: Color(0XFFB7B7D2),

        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2196F3),
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2196F3),
          ),
          headline3: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 20.0,
            color: Color(0XFFB7B7D2),
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2196F3),
          )
        ),
      ),
    );
  }
}