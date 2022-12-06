// https://www.youtube.com/watch?v=NOLlKxtifjA //

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget like(String idCurso, Future<bool> meGusta) {
  print('booleano-like-$meGusta');
  return LikeButton(
    size: 40,
    onTap: ((meGusta) async {
      return changedata(idCurso, meGusta);
    }),
    likeBuilder: (meGusta) {
      if (meGusta) {
        return const Icon(Icons.favorite, color: Color(0xFF2196F3), size: 30);
      } else {
        return const Icon(Icons.favorite_outline,
            color: Color(0xFF2196F3), size: 30);
      }
    },
  );
}

Future<bool> changedata(String idCurso, bool status) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool('idCurso$idCurso', !status);
  print('Guardar-$idCurso - ${!status}');
  return Future.value(!status);
}

Widget likeSimple() {
  return LikeButton(
    size: 40,
    likeBuilder: (isLiked) {
      if (isLiked) {
        return const Icon(Icons.favorite, color: Color(0xFF2196F3), size: 30);
      }
      if (!isLiked) {
        return const Icon(Icons.favorite_outline,
            color: Color(0xFF2196F3), size: 30);
      }
    },
  );
}

// class Like extends StatefulWidget {
//   const Like({Key? key}) : super(key: key);

//   @override
//   State<Like> createState() => _LikeState();
// }

// class _LikeState extends State<Like> {
//   @override
//   Widget build(BuildContext context) {
//     return LikeButton(
//       size: 40,
//       likeBuilder: (isLiked) {
//         if (isLiked) {
//           return const Icon(Icons.favorite, color: Colors.red, size: 40);
//         }
//         if (!isLiked) {
//           return const Icon(Icons.favorite, color: Colors.white, size: 40);
//         }
//       },
//     );
//   }
// }