import 'package:ecommerce/components/header.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/cart_products.dart';
class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderBarWidget(),
        body: CartProducts(),
        
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
              children: <Widget>[
          Expanded(child: ListTile(
          title: Text("Total:"),
          subtitle: Text("132\u20ac"),
        )
    ),
    Expanded(
    child : MaterialButton(
    onPressed:(){} ,
    child: const Text("Check out",
    style:TextStyle(color: Colors.white, )),
    color: Colors.red,
    )
    )
    ],
    )
    ),
    );
  }
}
