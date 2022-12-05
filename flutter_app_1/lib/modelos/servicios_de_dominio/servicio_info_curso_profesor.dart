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
import '../../pruebas_para_el_api/adapdatores_api/json_api_adapter.dart';

class ServicioInfoCursoProfesor {
  Future<IterableLista<InfoCursoConProfesor>>
      getTodosLosCursosConProfesores() async {
    ApiJsonAdapter adapter = ApiJsonAdapter();
    List<Curso>? cursos;
    List<Profesor>? profesores;
    IterableLista<InfoCursoConProfesor> iterable = IterableLista();

    await adapter.getData();
    adapter.fabrica();
    cursos = adapter.getCursos();
    profesores = adapter.getProfesores();

    for (int cont = 0; cont < cursos!.length; cont++) {
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
