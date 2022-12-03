// NO FINALIZADO //

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LeccionesCarrusel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(),
      items: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
      ],
    );
  }
}
