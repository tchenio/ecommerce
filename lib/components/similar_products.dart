import 'package:flutter/material.dart';
import 'package:ecommerce/model/product.dart';
class Similar_product extends StatefulWidget {
  const Similar_product({Key? key}) : super(key: key);

  @override
  _Similar_productState createState() => _Similar_productState();
}

class _Similar_productState extends State<Similar_product> {
  var productList = [
    {
      "name": "Dr Jart",
      "picture": "images/products/hills1.jpeg",
      "old_price": 15,
      "price": 12
    }
  ];
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
}
