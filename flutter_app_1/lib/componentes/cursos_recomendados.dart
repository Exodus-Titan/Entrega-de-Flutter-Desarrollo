import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselCursos extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height:230.0,
      ),
      items: <Widget>[
        Container(margin: EdgeInsets.all(3.0), color: Colors.blue),
        Container(margin: EdgeInsets.all(3.0), color: Colors.blue),
        Container(margin: EdgeInsets.all(3.0), color: Colors.blue),
        Container(margin: EdgeInsets.all(3.0), color: Colors.blue),
      ],
    );
  }
}