import 'package:ecommerce/model/Category.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Category(
          image_location: "images/categorie/masque-60.png",
          image_caption: "Skin mask",
        ),
        Category(
          image_location: "images/categorie/serum-60.png",
          image_caption: "Oil serum",
        ),
        Category(
          image_location: "images/categorie/pinceau-60.png",
          image_caption: "Accessory",
        ),
      ]),
    );
  }
}
