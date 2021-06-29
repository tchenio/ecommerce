import 'package:ecommerce/model/category.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child:  ListView(scrollDirection: Axis.horizontal, children: const <Widget>[
         Category(
          imageLocation: "images/categorie/masque-60.png",
          imageCaption: "Skin mask",
        ),
        Category(
          imageLocation: "images/categorie/serum-60.png",
          imageCaption: "Oil serum",
        ),
        Category(
          imageLocation: "images/categorie/pinceau-60.png",
          imageCaption: "Accessory",
        ),
      ]),
    );
  }
}
