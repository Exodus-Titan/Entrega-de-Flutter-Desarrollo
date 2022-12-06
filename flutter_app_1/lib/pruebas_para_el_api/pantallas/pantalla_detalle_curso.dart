// NO FINALIZADO //

import 'package:flutter/material.dart';
// import '../componentes/like_curso.dart';

class PantallaDetalleCurso extends StatelessWidget {
  final String tituloCurso;
  final String descripcionCurso;
  const PantallaDetalleCurso(this.tituloCurso, this.descripcionCurso,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(tituloCurso, context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widgetImage(),
            widgetTituloCurso(tituloCurso, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                widgetFlexible(
                    context, widgetDescripcionCurso(descripcionCurso, context)),
                widgetFlexible(context, widgetListaLecciones(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget? widgetAppBar(String tituloCurso, BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xFF2196F3),
    title: Text(tituloCurso),
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
    // actions: [
    //   like(false),
    // ],
  );
}

Widget widgetImage() {
  return AspectRatio(
    aspectRatio: 400 / 150,
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          alignment: FractionalOffset.topCenter,
          image: AssetImage('assets/imgs/CursoDiseño.png'),
        ),
      ),
    ),
  );
}

Widget widgetFlexible(BuildContext context, Widget widget) {
  return Flexible(child: widget);
}

Widget widgetTituloCurso(String tituloCurso, BuildContext context) {
  return Container(
    width: double.infinity,
    color: const Color(0xFF2196F3),
    padding: const EdgeInsets.fromLTRB(1.0, 5.0, 1.0, 10.0),
    child: Text(
      tituloCurso,
      style: Theme.of(context).textTheme.headline1,
      textAlign: TextAlign.center,
    ),
  );
}

Widget widgetDescripcionCurso(String descripcionCurso, BuildContext context) {
  return Container(
    padding: const EdgeInsets.fromLTRB(1.0, 0, 2.0, 0),
    child: Text(
      'Descripcion del curso: \n$descripcionCurso',
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.justify,
    ),
  );
}

Widget widgetMaterialButton(
    Text texto, int colorA, int colorR, int colorG, int colorB) {
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    onPressed: () {
      // debugPrint('Navega hacia la leccion');
    },
    minWidth: double.infinity,
    color: Color.fromARGB(colorA, colorR, colorG, colorB),
    child: texto,
  );
}

Text widgetTextLeccion(BuildContext context, String texto) {
  return Text(
    texto,
    style: Theme.of(context).textTheme.subtitle2,
    textAlign: TextAlign.left,
  );
}

// Color c = Color(Color.fromARGB(255, 172, 172, 172))

Widget widgetListaLecciones(BuildContext context) {
  return Container(
    padding: const EdgeInsets.fromLTRB(2.0, 0, 0, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        widgetMaterialButton(
            Text(
              'Lecciones',
              style: Theme.of(context).textTheme.headline4,
            ),
            255,
            172,
            172,
            172),
        widgetMaterialButton(
            widgetTextLeccion(context, 'Leccioooooon 1'), 255, 66, 66, 66),
        widgetMaterialButton(
            widgetTextLeccion(context, 'Lecciooooooooooon 2'), 255, 66, 66, 66),
        widgetMaterialButton(
            widgetTextLeccion(context, 'Lecciooooooooon 3'), 255, 66, 66, 66),
      ],
    ),
  );
}
