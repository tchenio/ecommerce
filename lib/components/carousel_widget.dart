import 'package:carousel_pro/carousel_pro.dart' show Carousel; //TODO migrate carousel library
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child:  Carousel(
        boxFit: BoxFit.cover,
        images: const [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
