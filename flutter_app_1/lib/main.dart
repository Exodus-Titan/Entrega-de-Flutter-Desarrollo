import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/pantallas/pantalla_cursos.dart';
//import 'package:flutter_pantalla_1/pantallas/pantalla_detalle_curso.dart';
// import 'package:flutter_pantalla_1/pantallas/prueba_navegacion.dart';
// import 'package:flutter_pantalla_1/pantallas/prueba_navegacion_usuario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corsi',
      home: PantallaCursos(),
      theme: ThemeData(
        primaryColor: Color(0xFF2196F3),
        accentColor: Color(0XFF030047),
        highlightColor: Color(0XFFB7B7D2),
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
            bodyText1: TextStyle(
              fontSize: 20.0,
              color: Color(0XFFB7B7D2),
            ),
            bodyText2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2196F3),
            )),
      ),
    );
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
