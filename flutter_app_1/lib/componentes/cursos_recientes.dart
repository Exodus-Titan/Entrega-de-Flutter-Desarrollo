import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'item_cursos_recientes.dart';

class CarouselCursosRecientes extends StatelessWidget {
  const CarouselCursosRecientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0,
      ),
      items: const <Widget>[
        //se elimina el widget y se agrega la lista de cursos
        ItemCursosRecientes(),
        ItemCursosRecientes(),
        ItemCursosRecientes(),
        ItemCursosRecientes(),
      ],
    );
  }
}
