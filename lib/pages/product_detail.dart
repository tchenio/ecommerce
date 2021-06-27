import 'package:ecommerce/components/drawer.dart';
import 'package:ecommerce/components/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class ProductDetails extends StatefulWidget {
  final pd_name;
  final pd_picture;
  final pd_price;
  final pd_old_price;

  const ProductDetails(
      {Key? key,
      this.pd_name,
      this.pd_picture,
      this.pd_price,
      this.pd_old_price})
      : super(key: key);

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
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.pd_picture),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.pd_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    title: new Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${widget.pd_old_price}",
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Text(
                              "${widget.pd_price}",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(

            ),
          ],
        ),
    );
  }
}
