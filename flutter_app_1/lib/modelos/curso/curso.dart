import 'package:flutter_pantalla_1/modelos/curso/logoCurso.dart';
import 'package:flutter_pantalla_1/modelos/curso/tituloCurso.dart';
import 'package:flutter_pantalla_1/modelos/curso/descripcionCurso.dart';
import 'package:flutter_pantalla_1/modelos/idProfesor.dart';
import 'package:flutter_pantalla_1/modelos/idCurso.dart';

class Curso {
  idCurso id;
  logoCurso logo;
  tituloCurso titulo;
  descripcionCurso descripcion;
  idProfesor profesor;

  Curso({required this.id, required this.logo, required this.titulo, required this.descripcion, required this.profesor});
}