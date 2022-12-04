import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'item_cursos_recientes.dart';
import '../../API/Dtos/curso_dto.dart';
import 'package:flutter_pantalla_1/API/api.dart';

class CarouselCursosRecientes extends StatefulWidget {
  const CarouselCursosRecientes({Key? key}) : super(key: key);

  @override
  State<CarouselCursosRecientes> createState() =>
      _CarouselCursosRecientesState();
}

class _CarouselCursosRecientesState extends State<CarouselCursosRecientes> {
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

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: Center(
        child: SizedBox(
          height: 260, // card height
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: PageView.builder(
              itemCount: cursos?.length,
              controller: PageController(viewportFraction: 0.80),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: i == _index ? 1 : 0.9,
                  child: itemCursosRecientes(
                      cursos![_index].titulo,
                      cursos![_index].prof,
                      cursos![_index].descripcion,
                      context),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
