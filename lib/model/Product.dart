import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_detail.dart';

class Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  const Product(
      {Key? key, this.product_name, this.product_picture, this.product_old_price, this.product_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () =>
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => new ProductDetails())),
              child: GridTile(
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                ),

                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(product_name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    title: Text("\$$product_price",),
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
