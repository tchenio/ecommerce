import 'package:ecommerce/pages/product_detail.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final dynamic productName;
  final dynamic productPicture;
  final dynamic productOldPrice;
  final dynamic productPrice;

  const Product(
      {Key? key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  // navigator alow to put a new page on top of current product list
                  builder: (context) => ProductDetails(
                        // passing all info of the product to the page product_detail
                        pd_name: productName,
                        pd_picture: productPicture,
                        pd_price: productPrice,
                        pd_old_price: productOldPrice,
                      ))),
              child: GridTile(
                child: Image.asset(
                  productPicture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(productName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    title: Text(
                      "\$$productPrice",
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
