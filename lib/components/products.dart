import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Dr Jart",
      "picture": "images/products/hills2.jpeg",
      "old_price": 15,
      "price": 12
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            productName: product_list[index]['name'],
            productPicture: product_list[index]['picture'],
            productOldPrice: product_list[index]['old_price'],
            productPrice: product_list[index]['price'],
          );
        });
  }
}
