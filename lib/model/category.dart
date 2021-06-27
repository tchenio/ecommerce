import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final  String imageLocation;
  final String imageCaption;

  const Category(
      {Key? key, required this.imageLocation, required this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        //InkWell to make a widget clickable
        onTap: () {},
        child: Container(
          width: 110,
          child: ListTile(
            title: Image.asset(imageLocation, width: 48, height: 48),
            subtitle: Container(
              child: Text(imageCaption),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
