import 'package:flutter_pantalla_1/modelos/profesor/nombre_profesor.dart';
import 'package:flutter_pantalla_1/modelos/profesor/profesor.dart';
import '../../API/Dtos/curso_dto.dart';
import 'package:flutter_pantalla_1/API/api.dart';
import '../../modelos/curso/curso.dart';

// ESTO NO VA AQUI, ESTO DEBERIA HACERLO UNA FABRICA, SOLO ES UNA PRUEBA //
import 'package:flutter_pantalla_1/modelos/curso/logo_curso.dart';
import 'package:flutter_pantalla_1/modelos/curso/titulo_curso.dart';
import 'package:flutter_pantalla_1/modelos/curso/descripcion_curso.dart';
import 'package:flutter_pantalla_1/modelos/id_profesor.dart';
import 'package:flutter_pantalla_1/modelos/id_curso.dart';
// ESTO NO VA AQUI, ESTO DEBERIA HACERLO UNA FABRICA, SOLO ES UNA PRUEBA //

class ApiJsonAdapter {
  List<Profesor>? profesoresAgg;
  List<Curso>? cursosAgg;
  List<CursoDto>? cursos;

  getData() async {
    cursos = await Api().getCursos();
  }

// ESTO NO VA AQUI, ESTO DEBERIA HACERLO UNA FABRICA, SOLO ES UNA PRUEBA //
  List<Curso>? fabrica() {
    cursosAgg = [];
    profesoresAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      Profesor profe = Profesor(
        id: IdProfesor(id: cont.toString()),
        nombre: NombreProfesor(nombre: cursos![cont].prof),
      );
      profesoresAgg!.add(profe);
      cursosAgg!.add(
        Curso(
          id: IdCurso(id: cursos![cont].id),
          logo: LogoCurso(urlLogo: cursos![cont].foto),
          titulo: TituloCurso(titulo: cursos![cont].titulo),
          descripcion: DescripcionCurso(descripcion: cursos![cont].descripcion),
          profesor: IdProfesor(id: profe.id.getId()),
        ),
      );
    }
    return cursosAgg;
  }
// ESTO NO VA AQUI, ESTO DEBERIA HACERLO UNA FABRICA, SOLO ES UNA PRUEBA //

  List<Curso>? getCursos() {
    return cursosAgg;
  }

  List<Profesor>? getProfesores() {
    return profesoresAgg;
  }
}
