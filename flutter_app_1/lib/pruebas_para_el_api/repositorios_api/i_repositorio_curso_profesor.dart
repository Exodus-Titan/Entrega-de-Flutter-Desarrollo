import '../../modelos/curso/curso.dart';
import '../../modelos/profesor/profesor.dart';

abstract class IRepositorioCursoProfesor {
  Future getData();
  List<Curso>? getCursos();
  List<Profesor>? getProfesores();
}
