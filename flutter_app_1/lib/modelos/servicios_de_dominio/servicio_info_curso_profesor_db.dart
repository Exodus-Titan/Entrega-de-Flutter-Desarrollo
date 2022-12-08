// import '../parameters_objects/info_curso_con_profesor.dart';
// import '../patron_iterador/iterado_generico/iterable_lista.dart';
// import '../../data/Adaptador/I_Repositoty_BD.dart';
// import '../patron_iterador/iterado_generico/iterable_lista.dart';
// import '../patron_iterador/iterado_generico/iterador_lista.dart';
// import '../../data/ModeloTamporal/cursoTemp.dart';

// class ServicioGuardarInfoCursoProfesorDB {
//   Future<void> guardarTodosLosCursosConProfesores(
//       IRepositorioMoor adaptadorCursoProfesor,
//       IterableLista<InfoCursoConProfesor> datos) async {
//     IteradorLista<InfoCursoConProfesor> iteradorDatos = datos.crearIterador();
//     await adaptadorCursoProfesor.init();
//     while(iteradorDatos.hasMore()) {
//       adaptadorCursoProfesor.guardarTodosLosCursos(traducirCursos(iteradorDatos));
//       adaptadorCursoProfesor.guardarTodosLosUsuarios(List<UsuarioTemp> usuario);
//     }
//     adaptadorCursoProfesor.close();
//   }

//   List<CursoTemp> traducirCursos(IteradorLista<InfoCursoConProfesor> cursos) {
//     List<CursoTemp> cursosTemp = [];
//     for (int cont = 0; cont < cursos.cantidadElementos(); cont++) {
//       cursosTemp.add(cursosTemp(
          
//         ),
//       );
//     }
//   }
// }
