// NO FINALIZADO //

import 'package:flutter/material.dart';

class NavegacionDetalleCurso extends StatefulWidget {
  const NavegacionDetalleCurso({Key? key}) : super(key: key);

  @override
  State<NavegacionDetalleCurso> createState() => _NavegacionDetalleCursoState();
}

class _NavegacionDetalleCursoState extends State<NavegacionDetalleCurso> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sig Pag'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            widgetImage(),
            widgetSizedBox(),
            widgetDivider(),
            widgetContainer(),
            widgetElevatedButton(isSwitch),
            widgetOutlinedButton(),
            widgetTextButton(),
            widgetGestureDetector(),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            widgetImageNetwork(),
          ],
        ),
      ),
    );
  }
}

Widget widgetImage() {
  return Image.asset('assets/imgs/curso.png');
}

Widget widgetSizedBox() {
  return const SizedBox(
    height: 10,
  );
}

Widget widgetDivider() {
  return const Divider(
    color: Colors.black,
  );
}

Widget widgetContainer() {
  return Container(
    margin: const EdgeInsets.all(10.0),
    padding: const EdgeInsets.all(10.0),
    color: Colors.blueGrey,
    width: double.infinity,
    child: const Center(
      child: Text(
        'This is a text widget',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget widgetElevatedButton(isSwitch) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: isSwitch ? Colors.blue : Colors.green,
    ),
    onPressed: () {
      debugPrint('Elevated button');
    },
    child: const Text('Elevated button'),
  );
}

Widget widgetOutlinedButton() {
  return OutlinedButton(
    onPressed: () {
      debugPrint('Outlined button');
    },
    child: const Text('Outlined button'),
  );
}

Widget widgetTextButton() {
  return TextButton(
    onPressed: () {
      debugPrint('Text button');
    },
    child: const Text('Text button'),
  );
}

Widget widgetGestureDetector() {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {
      debugPrint('This is the row');
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(
          Icons.local_fire_department,
          color: Colors.blue,
        ),
        Text('Text button'),
        Icon(
          Icons.local_fire_department,
          color: Colors.blue,
        ),
      ],
    ),
  );
}

// Widget widgetSwitch(bool isSwitch) {
//   Switch(
//       value: isSwitch,
//       onChanged: (bool newBool) {
//         setState(() {
//           isSwitch = newBool;
//         });
//       });
// }

// Widget widgetCheckbox(bool? isCheckbox) {
//   return Checkbox(
//       value: isCheckbox,
//       onChanged: (bool? newBool) {
//         setState(() {
//           isCheckbox = newBool;
//         });
//       });
// }

Widget widgetImageNetwork() {
  return Image.network(
      'https://www.xtrafondos.com/wallpapers/resoluciones/20/paisaje-retro-de-atardecer_1920x1080_5436.jpg');
}
