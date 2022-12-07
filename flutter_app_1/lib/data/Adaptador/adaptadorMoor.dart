import 'dart:core';

import 'package:flutter_pantalla_1/data/Adaptador/I_Repositoty_BD.dart';
import 'package:flutter_pantalla_1/data/ModeloTamporal/UsuarioTemp.dart';
import 'package:flutter_pantalla_1/data/ModeloTamporal/cursoTemp.dart';
import 'package:flutter_pantalla_1/data/moor/moor_db.dart';
import 'package:flutter_pantalla_1/modelos/fabricas/fabrica_curso.dart';
import 'package:flutter_pantalla_1/modelos/fabricas/fabrica_profesor.dart';
import '../../modelos/curso/curso.dart';
import '../../modelos/profesor/profesor.dart';

/*
  Dataso para quien use este adapter xd
  idealmente solo tienes q usar los metodos init, close, fabrica, ambos GuardarTodos, getCursos y getUsuarios
  el init y el close son como para iniciar y cerrar la base asi q asumo q hay q usarlos al principio y al final de en lo q lo uses
  para los guardar, hay q pasarle un objeto de tipo CursoTempp o UsuarioTemp, no pude hacer convertidores por los Value Objects
  y los gets te va a devolver directamente el array de cursos y el array de usuarios
 */

class AdaptadorMoor implements IRepositorioMoor{
  late CorsiDataBase corsiDataBase;
  late CursoDao cursoDao;
  //late LeccionDao leccionDao;
  late UsuarioDao usuarioDao;
  List<Curso>? cursosAgg;
  List<Profesor>? profesoresAgg;
  FabricaCurso fabricaCurso = FabricaCurso();
  FabricaProfesor fabricaProfesor = FabricaProfesor();

  @override
  Future init() async{
    cursoDao = corsiDataBase.cursoDao;
    //leccionDao = corsiDataBase.leccionDao;
    usuarioDao = corsiDataBase.usuarioDao;
  }

  @override
  void close(){
    corsiDataBase.close();
  }

  @override
  Future<List<CursoTemp>> getCursosBD(){
    return cursoDao.obtenerTodosLosCursos().then<List<CursoTemp>>((List<MoorCursoData> moorCursos){
      final cursos = <CursoTemp>[];
      moorCursos.forEach((moorCurso) async {
        final curso = moorCursoToCurso(moorCurso);
        cursos.add(curso);
      },);
      return cursos;
    },);
  }

  @override
  Future<List<UsuarioTemp>> getUsuariosBD(){
    return usuarioDao.obtenerTodosLosUsuarios().then<List<UsuarioTemp>>((List<MoorUsuarioData> moorUsuarios){
      final usuarios = <UsuarioTemp>[];
      moorUsuarios.forEach((moorUsuario) async {
        final usuario = moorUsuarioToUsuario(moorUsuario);
        usuarios.add(usuario);
      },);
      return usuarios;
    },);
  }

  @override
  Future<CursoTemp> getCursoPorIdBD(int idCurso){
    return cursoDao.buscarCursoPorId(idCurso).then((listaDeCursos) => moorCursoToCurso(listaDeCursos.first));
  }

  @override
  Future<int> insertarCurso(CursoTemp curso){
    return Future (() async{
      final id = await cursoDao.insertarCurso(cursoToInsertableMoorCurso(curso));
      return id;
    });
  }

  @override
  Future<int> insertarUsuario(UsuarioTemp usuario){
    return Future (() async {
      final id = await usuarioDao.insertarUsuario(usuarioToInsertableMoorUsuario(usuario));
      return id;
    });
  }

  @override
  void guardarTodosLosCursos(List<CursoTemp> cursos){
    cursos.forEach((curso) {
      var id = insertarCurso(curso);
    });
  }

  @override
  void guardarTodosLosUsuarios(List<UsuarioTemp> usuarios){
    usuarios.forEach((usuario) {
      var id = insertarUsuario(usuario);
    });
  }

  void fabrica() async {
    cursosAgg = [];
    profesoresAgg = [];
    List<CursoTemp> cursosBD = await getCursosBD();
    List<UsuarioTemp> usuariosBD = await getUsuariosBD();
    for(int i = 0; i < usuariosBD.length; i++){
      Profesor profesor = fabricaProfesor.reconstruirProfesor(usuariosBD[i].idProf.toString(), usuariosBD[i].nombre);
      profesoresAgg?.add(profesor);
    };
    for(int i = 0; i < cursosBD.length; i++){
      Curso curso = fabricaCurso.reconstruirCurso(
          cursosBD[i].idCurso.toString(),
          cursosBD[i].logo,
          cursosBD[i].titulo,
          cursosBD[i].descripcion,
          cursosBD[i].idProf.toString());
      cursosAgg?.add(curso);
    }
  }

  List<Curso>? getCursos(){
    return cursosAgg;
  }

  List<Profesor>? getProfesores(){
    return profesoresAgg;
  }
}