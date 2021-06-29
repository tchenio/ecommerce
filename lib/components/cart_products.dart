import 'package:flutter/material.dart';
import 'package:ecommerce/model/product.dart';
class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  @override
  var productsOnCart= [];
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: productsOnCart.length,
        itemBuilder: (context, index) {

            return Product(
              productName: productsOnCart[index]["name"],
            );

        });
  }
}
