import 'package:flutter_pantalla_1/data/ModeloTamporal/UsuarioTemp.dart';

import '../parameters_objects/info_curso_con_profesor.dart';
import '../patron_iterador/iterado_generico/iterable_lista.dart';
import '../../data/Adaptador/I_Repositoty_BD.dart';
import '../patron_iterador/iterado_generico/iterador_lista.dart';
import '../../data/ModeloTamporal/cursoTemp.dart';

class ServicioGuardarInfoCursoProfesorDB {
  Future<void> guardarTodosLosCursosConProfesores(
      IRepositorioMoor adaptadorCursoProfesor,
      IterableLista<InfoCursoConProfesor>? datos) async {
    IteradorLista<InfoCursoConProfesor> iteradorDatos = datos!.crearIterador();
    await adaptadorCursoProfesor.init();
    while (iteradorDatos.hasMore()) {
      adaptadorCursoProfesor
          .guardarTodosLosCursos(traducirCursos(iteradorDatos));
      adaptadorCursoProfesor
          .guardarTodosLosUsuarios(traducirProfesores(iteradorDatos));
    }
    adaptadorCursoProfesor.close();
  }

  List<CursoTemp> traducirCursos(IteradorLista<InfoCursoConProfesor> cursos) {
    List<CursoTemp> cursosTemp = [];
    for (int cont = 0; cont < cursos.cantidadElementos(); cont++) {
      cursosTemp.add(
        CursoTemp(
          BDid: cont,
          idCurso: int.parse(cursos.getNext().idCurso.getId()),
          logo: cursos.getNext().logoCurso.getLogo(),
          titulo: cursos.getNext().tituloCurso.getTitulo(),
          descripcion: cursos.getNext().descripcionCurso.getDescripcion(),
          idProf: int.parse(cursos.getNext().idProfesor.getId()),
        ),
      );
    }
    return cursosTemp;
  }

  List<UsuarioTemp> traducirProfesores(
      IteradorLista<InfoCursoConProfesor> profesores) {
    List<UsuarioTemp> usuariosTemp = [];
    for (int cont = 0; cont < profesores.cantidadElementos(); cont++) {
      usuariosTemp.add(
        UsuarioTemp(
          BDid: cont,
          idProf: int.parse(profesores.getNext().getIdProfesor()),
          nombre: profesores.getNext().getNombreProfesor(),
        ),
      );
    }
    return usuariosTemp;
  }
}
