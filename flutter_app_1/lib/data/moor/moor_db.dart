import 'package:moor_flutter/moor_flutter.dart';
import 'package:flutter_pantalla_1/modelos/curso/curso.dart';
import 'package:flutter_pantalla_1/modelos/profesor/profesor.dart';


part 'moor_bd.g.dart';

class MoorCurso extends Table {
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idCurso => integer()();
  BlobColumn get foto => blob()();
  TextColumn get titulo => text()();
  TextColumn get descripcion => text()();
  TextColumn get nombreProf => text()();

}

class MoorLeccion extends Table{
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idLeccion => integer()();
  TextColumn get titulo => text()();
  TextColumn get descripcion => text()();

  IntColumn get idCurso => integer()(); //Aqui debe haber una FK
}

class MoorUsuario extends Table{
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idProf => integer().autoIncrement()();
  TextColumn get nombreProf => text()();
}


@UseMoor(tables: [MoorCurso, MoorLeccion, MoorUsuario], daos: [])  RecipeDatabase()
// TODO: Add RecipeDao here
// TODO: Add IngredientDao
// TODO: Add moorRecipeToRecipe here
// TODO: Add MoorRecipeData here
// TODO: Add moorIngredientToIngredient and MoorIngredientCompanion here
