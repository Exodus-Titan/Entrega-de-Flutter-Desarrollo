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
    adaptadorCursoProfesor.guardarTodosLosCursos(traducirCursos(iteradorDatos));
    iteradorDatos.resetPosicionInicial();
    adaptadorCursoProfesor
        .guardarTodosLosUsuarios(traducirProfesores(iteradorDatos));
    adaptadorCursoProfesor.close();
  }

  List<CursoTemp> traducirCursos(IteradorLista<InfoCursoConProfesor> cursos) {
    List<CursoTemp> cursosTemp = [];
    int cont = 0;
    while (cursos.hasMore()) {
      cont++;
      InfoCursoConProfesor curso = cursos.getNext();
      cursosTemp.add(
        CursoTemp(
          BDid: cont,
          idCurso: int.parse(curso.idCurso.getId()),
          logo: curso.logoCurso.getLogo(),
          titulo: curso.tituloCurso.getTitulo(),
          descripcion: curso.descripcionCurso.getDescripcion(),
          idProf: int.parse(curso.idProfesor.getId()),
        ),
      );
    }
    return cursosTemp;
  }

  List<UsuarioTemp> traducirProfesores(
      IteradorLista<InfoCursoConProfesor> profesores) {
    List<UsuarioTemp> usuariosTemp = [];
    int cont = 0;
    while (profesores.hasMore()) {
      cont++;
      InfoCursoConProfesor profesor = profesores.getNext();
      usuariosTemp.add(
        UsuarioTemp(
          BDid: cont,
          idProf: int.parse(profesor.getIdProfesor()),
          nombre: profesor.getNombreProfesor(),
        ),
      );
    }
    return usuariosTemp;
  }
}
