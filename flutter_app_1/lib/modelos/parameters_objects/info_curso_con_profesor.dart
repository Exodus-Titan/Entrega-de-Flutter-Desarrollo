import 'package:flutter_pantalla_1/modelos/curso/logo_curso.dart';
import 'package:flutter_pantalla_1/modelos/curso/titulo_curso.dart';
import 'package:flutter_pantalla_1/modelos/curso/descripcion_curso.dart';
import 'package:flutter_pantalla_1/modelos/id_profesor.dart';
import 'package:flutter_pantalla_1/modelos/id_curso.dart';
import 'package:flutter_pantalla_1/modelos/profesor/nombre_profesor.dart';

class InfoCursoConProfesor {
  IdCurso idCurso;
  LogoCurso logoCurso;
  TituloCurso tituloCurso;
  DescripcionCurso descripcionCurso;
  IdProfesor idProfesor;
  NombreProfesor nombreProfesor;

  InfoCursoConProfesor(
      {required this.idCurso,
      required this.logoCurso,
      required this.tituloCurso,
      required this.descripcionCurso,
      required this.idProfesor,
      required this.nombreProfesor});

  String getTituloCurso() {
    return this.tituloCurso.getTitulo();
  }

  String getDescripcionCurso() {
    return this.descripcionCurso.getDescripcion();
  }

  String getNombreProfesor() {
    return this.nombreProfesor.getNombre();
  }
}
