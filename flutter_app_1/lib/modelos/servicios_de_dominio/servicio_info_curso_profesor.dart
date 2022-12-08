import '../curso/curso.dart';
import '../profesor/profesor.dart';
import '../id_curso.dart';
import '../id_profesor.dart';
import '../curso/descripcion_curso.dart';
import '../curso/logo_curso.dart';
import '../curso/titulo_curso.dart';
import '../profesor/nombre_profesor.dart';
import '../parameters_objects/info_curso_con_profesor.dart';
import '../patron_iterador/iterado_generico/iterable_lista.dart';
import '../../vistas/repositorios_api/i_repositorio_curso_profesor.dart';

class ServicioInfoCursoProfesor {
  Future<IterableLista<InfoCursoConProfesor>> getTodosLosCursosConProfesores(
      IRepositorioCursoProfesor adaptadorCursoProfesor) async {
    List<Curso>? cursos;
    List<Profesor>? profesores;
    IterableLista<InfoCursoConProfesor> iterable = IterableLista();

    await adaptadorCursoProfesor.getData();
    cursos = adaptadorCursoProfesor.getCursos();
    profesores = adaptadorCursoProfesor.getProfesores();

    print(cursos!.length);
    for (int cont = 0; cont < cursos!.length; cont++) {
      print('contador de get info: $cont');
      iterable.add(
        InfoCursoConProfesor(
          idCurso: IdCurso(id: cursos[cont].getId()),
          tituloCurso: TituloCurso(titulo: cursos[cont].getTitulo()),
          descripcionCurso:
              DescripcionCurso(descripcion: cursos[cont].getDescripcion()),
          logoCurso: LogoCurso(urlLogo: cursos[cont].getLogo()),
          idProfesor: IdProfesor(id: profesores![cont].getId()),
          nombreProfesor: NombreProfesor(
            nombre: profesores[cont].getNombre(),
          ),
        ),
      );
    }

    return iterable;
  }
}
