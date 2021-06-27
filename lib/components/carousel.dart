
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart' show Carousel;


class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return new Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/c1.jpg'),
            AssetImage('images/m2.jpg'),
            AssetImage('images/m1.jpeg'),
            AssetImage('images/w1.jpeg'),
            AssetImage('images/w3.jpeg'),
            AssetImage('images/w4.jpeg'),
          ],
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
        ),
      );
  }
}