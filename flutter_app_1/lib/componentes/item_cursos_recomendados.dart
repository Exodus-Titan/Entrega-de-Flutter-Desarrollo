import 'package:flutter/material.dart';

class ItemCursosRecomendados extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, bottom:20.0, top: 20.0),
      child: Container(
      decoration: boxDecoration(context),
      child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            cursoLogo(),
            favoriteIcon(),
          ],
        ),
        infoCursoRecomendado(context),
        ],
      ),
    ),
    ),
    );
  }
}

BoxDecoration boxDecoration(context) {
  return BoxDecoration(
    color: Color(0xFF67A7DF),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const <BoxShadow> [
      BoxShadow(
        color: Colors.black45,
        offset: Offset(5.0, 5.0),
        blurRadius: 10.0
      ),
    ],
  );
}

Widget cursoLogo() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/imgs/CursoJavaScript.png', //this.nombre.logoCurso
        width: 60.0,
      ),
    ),
  );
}

Widget favoriteIcon() {
  return const Icon(
    Icons.favorite_border,
    color: Colors.white,
  );
}

Widget infoCursoRecomendado(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Text(
        'JavaScript', //this.curso.titulo
        style: Theme.of(context).textTheme.headline3,
      ),
      const Text(
        'José Hernandez', //this.curso.profesor
        style: TextStyle(
          fontSize: 16.0,
          color: Color(0xFFEAEAF0),
        ),
      ),
      SizedBox(height: 3.0),
      const Text(
        'Aprende a utilizar funciones y herramientas de este lenguaje de forma rápida y sencilla', //this.curso.descripcion
        style: TextStyle(
        fontSize: 12.0,
        color: Color(0xFFD2D2E9),
        ),
      ),
    ],
  );
}