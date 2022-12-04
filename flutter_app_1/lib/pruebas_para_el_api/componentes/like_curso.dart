// https://www.youtube.com/watch?v=NOLlKxtifjA //

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

Widget like() {
  return LikeButton(
    size: 40,
    likeBuilder: (isLiked) {
      if (isLiked) {
        return const Icon(Icons.favorite, color: Color(0xFF2196F3), size: 30);
      }
      if (!isLiked) {
        return const Icon(Icons.favorite_outline, color: Color(0xFF2196F3), size: 30);
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