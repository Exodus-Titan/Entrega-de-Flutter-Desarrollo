import 'package:flutter/material.dart';
import '../pantallas/pantalla_detalle_curso.dart';
import 'like_curso.dart';

class ItemCursosRecientes extends StatefulWidget {
  const ItemCursosRecientes({Key? key}) : super(key: key);

  @override
  State<ItemCursosRecientes> createState() => _ItemCursosRecientesState();
}

class _ItemCursosRecientesState extends State<ItemCursosRecientes> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widgetOnTap(context),
      child: itemCursoReciente(context),
    );
  }
}

widgetOnTap(BuildContext context) {
  return (() => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const PantallaDetalleCurso();
            },
          ),
        )
      });
}

Widget itemCursoReciente(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 25.0, bottom: 20.0, top: 20.0),
    child: Container(
      decoration: boxDecoration(context),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                cursoLogo(),
                like(), //metodo importado de la clase like_curso.dart
              ],
            ),
            infoCursoReciente(context),
          ],
        ),
      ),
    ),
  );
}

BoxDecoration boxDecoration(context) {
  return BoxDecoration(
    color: const Color(0xFFFFFFFF),
    border: Border.all(
      color: const Color(0xFF528BBD),
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const <BoxShadow>[
      BoxShadow(
          color: Colors.black45, offset: Offset(5.0, 5.0), blurRadius: 10.0),
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
        'assets/imgs/CursoUX.png', //this.curso.logoCurso
        width: 130.0,
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

Widget infoCursoReciente(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Diseño UX', //this.curso.titulo
        style: Theme.of(context).textTheme.headline3,
      ),
      const Text(
        'Andrea Ramirez', //this.curso.profesor
        style: TextStyle(
          fontSize: 13.0,
          color: Color(0xFF928F8F),
        ),
      ),
      const SizedBox(height: 5.0),
      const Text(
        overflow: (TextOverflow.ellipsis),
        'Utiliza las herramientas adecuadas para diseñar una interfaz que cubra las necesidades que tiene tu usuario potencial', //this.curso.descripcion
        style: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF000000),
        ),
      ),
    ],
  );
}
