import 'package:flutter/material.dart';
import 'package:ecommerce/model/cart_product.dart';
class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {

  var productsOnCart= [
    {
      "name": "Dr Jart",
      "picture": "images/products/hills2.jpeg",
      "old_price": 15,
      "price": 12,
      "quantity": 3,
    }
  ];
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: productsOnCart.length,
        itemBuilder: (context, index) {

            return CartProduct(
              cartProductName: productsOnCart[index]["name"],
              cartProductPrice:  productsOnCart[index]["price"],
              cartProductOldPrice: productsOnCart[index]["old_price"],
              cartProductPicture: productsOnCart[index]["picture"],
              cartProductQuantity: productsOnCart[index]["quantity"],
            );

        });
  }
}
