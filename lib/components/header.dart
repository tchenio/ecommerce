import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/shopping_cart.dart';
import 'package:flutter/material.dart';
class HeaderBarWidget extends StatefulWidget implements PreferredSizeWidget {
  HeaderBarWidget()
      : preferredSize = const Size.fromHeight(60.0),
        super(key: UniqueKey());

  @override
  final Size preferredSize; // default is 56.0

  @override
  _HeaderBarWidgetState createState() => _HeaderBarWidgetState();
}

class _HeaderBarWidgetState extends State<HeaderBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.1,
      backgroundColor: Colors.purple,
      title: InkWell(
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=> HomePage())),
          child: const Text('Mad\'y Shop')
      ),
      actions: <Widget>[
        IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ShoppingCart())),
            icon: const Icon(Icons.shopping_cart, color: Colors.white))
      ],
    );
  }
}
