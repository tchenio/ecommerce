import 'package:flutter/material.dart';

class HeaderBarWidget extends StatefulWidget implements PreferredSizeWidget {
  HeaderBarWidget() : preferredSize = Size.fromHeight(60.0), super(key: UniqueKey());

  @override
  final Size preferredSize; // default is 56.0

  @override
  _HeaderBarWidgetState createState() => _HeaderBarWidgetState();
}

class _HeaderBarWidgetState extends State<HeaderBarWidget>{

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      title: Text('Mad\'y Shop'),
      actions: <Widget>[
        new IconButton(onPressed: (){} , icon: Icon(Icons.search, color: Colors.white,)),
        new IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color:Colors.white))
      ],
    );
  }
}