// https://www.youtube.com/watch?v=c09XiwOZKsI //

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/API/api.dart';
import 'package:flutter_pantalla_1/pruebas_para_el_api/componentes/item_cursos_recientes.dart';
import '../API/Dtos/curso_dto.dart';
import '../componentes/item_cursos_recientes.dart';

class PruebaApi extends StatefulWidget {
  const PruebaApi({Key? key}) : super(key: key);

  @override
  State<PruebaApi> createState() => _PruebaApiState();
}

class _PruebaApiState extends State<PruebaApi> {
  List<CursoDto>? cursos;
  var isLoaded = false;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    cursos = await Api().getCursos();
    if (cursos != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Prueba API'),
  //     ),
  //     body: Visibility(
  //       visible: isLoaded,
  //       replacement: const Center(
  //         child: CircularProgressIndicator(),
  //       ),
  //       child: ListView.builder(
  //         itemCount: cursos?.length,
  //         itemBuilder: (context, index) {
  //           return Container(
  //             child: Text(cursos![index].titulo),
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba API'),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: Center(
          child: SizedBox(
            height: 260, // card height
            child: PageView.builder(
              itemCount: cursos?.length,
              controller: PageController(viewportFraction: 0.86),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: i == _index ? 1 : 0.9,
                  // child: itemCursosRecientes( // Este es el 'bueno' (no este archivo, este child)
                  //     cursos![_index].titulo,
                  //     cursos![_index].prof,
                  //     cursos![_index].descripcion,
                  //     context),
                  // child: ItemCursosRecientes(),
                  // child: Card(
                  //   elevation: 6,
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Center(
                  //     child: Text(
                  //       cursos![_index].titulo,
                  //       style: TextStyle(fontSize: 32),
                  //     ),
                  //   ),
                  // ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
