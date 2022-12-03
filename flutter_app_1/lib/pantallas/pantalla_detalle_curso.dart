// NO FINALIZADO //

import 'package:flutter/material.dart';

class PantallaCurso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/imgs/curso.png',
              width: double.infinity,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '[Nombre del curso]',
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '[Descripcion del curso]',
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.justify,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Leccioooooon',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      'Leccioooooon',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      'Leccioooooon',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )
              ],
            ),
            // MaterialButton(
            //   elevation: 10.0,
            //   minWidth: 170.0,
            //   height: 50.0,
            //   color: Theme.of(context).primaryColor,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8.0),
            //   ),
            //   child: Text(
            //     'Iniciar leccion',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20.0,
            //     ),
            //   ),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
