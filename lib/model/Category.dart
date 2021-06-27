import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category(
      {Key? key, required this.image_location, required this.image_caption})
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
            title: Image.asset(image_location, width: 48, height: 48),
            subtitle: Container(
              child: Text(image_caption),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
