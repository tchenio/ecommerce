import 'package:ecommerce/components/drawer.dart';
import 'package:ecommerce/components/header.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final pd_name;
  final pd_picture;
  final pd_price;
  final pd_old_price;
  const ProductDetails({Key? key , this.pd_name, this.pd_picture, this.pd_price, this.pd_old_price}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBarWidget(),
      drawer: DrawerWidget(),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child : Container(
                child : Image.asset(widget.pd_picture),
              )
            ),

          )
        ],
      )
    );
  }
}
