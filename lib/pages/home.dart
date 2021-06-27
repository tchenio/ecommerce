import 'package:ecommerce/components/products.dart';
import 'package:ecommerce/components/carousel_widget.dart';
import 'package:ecommerce/components/category_listview.dart';
import 'package:ecommerce/components/drawer.dart';
import 'package:ecommerce/components/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = CarouselWidget();

    return Scaffold(
      appBar: HeaderBarWidget(),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          imageCarousel,
          const Padding(
            padding:  EdgeInsets.all(20.0),
            child: Text(
              "Catégories",
              style: TextStyle(
                fontWeight : FontWeight.bold,
              ),
            ),
          ),

          //horizontal list view
          HorizontalList(),
          const Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Nouveautés",
              style: TextStyle(
                fontWeight : FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}


