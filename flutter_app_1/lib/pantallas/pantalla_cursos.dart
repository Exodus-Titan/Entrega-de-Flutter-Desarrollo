import 'package:flutter/material.dart';
import '../componentes/cursos_recomendados.dart';

class PantallaCursos extends StatelessWidget {

  @override 
  Widget build (BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget> [
            //customAppBar(),
            textsHeader(context),
            cursosRecomendados(context),
          ],
        ),
      ),
    );
  }
}

/* Widget customAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        IconButton(
          iconSize: 40.0,
          icon: Image.asset('assets/imgs/menu.svg'),
          onPressed: (){},
        ),
        IconButton(
          iconSize: 40.0,
          icon: Image.asset('assets/imgs/usuario.svg'),
          onPressed: (){},
        )
      ],
    ),
  );
} */

Widget textsHeader(context) {
  return Padding(
  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Text(
        'Bienvenido a Corsi',
        style: Theme.of(context).textTheme.headline1,
      )
    ],
  ),
  );
}



Widget cursosRecomendados(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Text(
          'Para ti',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      CarouselCursos(),
    ],
  );
}