import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cat/cat2.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/cat/cat2.png',
            image_caption: 'clothes',
          ),
          Category(
            image_location: 'images/cat/cat2.png',
            image_caption: 'pant',
          ),
          Category(
            image_location: 'images/cat/cat2.png',
            image_caption: 't-shirt',
          ),
          Category(
            image_location: 'images/cat/cat2.png',
            image_caption: 't-shirt',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        width: 100.0,
        height: 100.0,
        child: ListTile(
          title: Image.asset(image_location),
          subtitle: new Container(
            alignment: Alignment.topCenter,
            child:  Text(image_caption),
          )
        ),
      ),
    ),);
  }
}

