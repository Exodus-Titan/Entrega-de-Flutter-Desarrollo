import 'package:flutter/material.dart';
// import 'package:flutter_pantalla_1/pantallas/pantalla_cursos.dart';
import 'package:flutter_pantalla_1/pruebas_para_el_api/pantallas/pantalla_cursos.dart';
// import 'package:flutter_pantalla_1/pruebas_para_el_api/pruebas_api.dart';
// import 'package:flutter_pantalla_1/pantallas/pantalla_detalle_curso.dart';
// import 'package:flutter_pantalla_1/pantallas/prueba_navegacion.dart';
// import 'package:flutter_pantalla_1/pantallas/prueba_navegacion_usuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Corsi',
        home: const PantallaCursos(),
        theme: ThemeData(
          primaryColor: const Color(0xFF2196F3),
          accentColor: const Color(0XFF030047),
          highlightColor: const Color(0XFFB7B7D2),
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
            headline2: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
            headline3: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF589FDE),
            ),
            headline4: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            bodyText1: TextStyle(
              fontSize: 20.0,
              color: Color(0XFFB7B7D2),
            ),
            bodyText2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2196F3),
            ),
            subtitle1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            subtitle2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ));
  }
}

//// Este codigo de abajo puede ser ignorado de momento, solo son pruebas ////

// class CursoApp extends StatelessWidget {
//   const CursoApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Prueba',
//       home: RootPage(),
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           textTheme: const TextTheme(
//               headline1: TextStyle(
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0XFF030047),
//               ),
//               headline2: TextStyle(
//                 fontSize: 15.0,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF5F5FFF),
//               ))),
//     );
//   }
// }

// class RootPage extends StatefulWidget {
//   const RootPage({Key? key}) : super(key: key);

//   @override
//   State<RootPage> createState() => _RootPageState();
// }

// class _RootPageState extends State<RootPage> {
//   int currentPage = 0;
//   List<Widget> Pages = const [
//     Navegacion(),
//     ProfilePage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Pages[currentPage],
//       appBar: AppBar(
//         title: const Text('Corsi'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           debugPrint('Floating action button');
//         },
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: NavigationBar(
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
//           NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         onDestinationSelected: (int index) {
//           setState(() {
//             currentPage = index;
//           });
//         },
//         selectedIndex: currentPage,
//       ),
//     );
//   }
// }
