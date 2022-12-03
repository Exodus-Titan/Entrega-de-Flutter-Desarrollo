import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/componentes/detalle_curso_lecciones.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PantallaCurso2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            // _volver(),
            _imagenCurso(),
            _tituloCurso(context),
            _descripcionCurso(context),
            _leccionesCurso(context),
          ],
        ),
      ),
    );
  }

  Widget _volver() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/back-svgrepo-com.svg'),
            iconSize: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _imagenCurso() {
    return Image.asset(
      'assets/imgs/curso.png',
      width: double.infinity,
    );
  }

  Widget _tituloCurso(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '[Titulo del curso]',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        )
      ],
    );
  }

  Widget _descripcionCurso(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '[Descripcion del curso]',
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }

  Widget _leccionesCurso(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Lecciones',
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.headline2,
        ),
        LeccionesCarrusel(),
      ],
    );
  }
}
