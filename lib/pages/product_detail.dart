
import 'package:ecommerce/components/header.dart';
import 'package:ecommerce/components/similar_products.dart';
import 'package:ecommerce/components/quantity_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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

      body: ListView(
        children:  <Widget>[
          Container(
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
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${widget.pd_old_price}\u20ac",
                          style: const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.pd_price}\u20ac",
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,

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
            children: [
              Expanded(
                child: QuantityDialog(),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.black54,
                  elevation: 0.2,
                  child: Row(
                    children: const [
                      Expanded(child: Text("Buy now")),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
                color: Colors.red,
              )
            ],
          ),
          const Divider(),
          ListTile(
            title: const Text("Détail du produit"),
            subtitle: Text("Amazing app"),
          ),
          const Divider(),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.pd_name),
              )
            ],
          ),
          Row(children: <Widget>[
            (const Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                "Product brand",
                style: TextStyle(color: Colors.grey),
              ),
            )),
            Padding(
              //TODO create brand name in product
              padding: const EdgeInsets.all(5.0),
              child: Text(widget.pd_name),
            ),
          ],
          ),
          const Divider(),
          const Padding(
              padding: EdgeInsets.all(10.0),
            child: Text(
              "Similar product",
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
          const SizedBox(
            height: 360,
            child: Similar_product(),
          )
        ],
      ),
    );
  }
}
