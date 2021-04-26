import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget imageCarousel = Container(
  height: 220.0,
  child: Padding(
    padding: const EdgeInsets.all(5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Carousel(
        images: [
          AssetImage('images/carousel1.jpg'),
          AssetImage('images/carousel2.jpg'),
          AssetImage('images/carousel3.jpg'),
          AssetImage('images/carousel4.jpg'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotBgColor: Color(0x00000000),
        dotSize: 4.0,
      ),
    ),
  ),
);
