import 'package:flutter/material.dart';
import 'prueba_navegacion_detalle_curso.dart';

class Navegacion extends StatelessWidget {
  const Navegacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const NavegacionDetalleCurso();
                },
              ),
            );
          },
          child: const Text('Sig Pag')),
    );
  }
}
