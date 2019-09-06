import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Bag White",
      "picture": "images/image17.jpg",
      "old_price": 200,
      "price": 120,
    },
    {
      "name": "Watch Women",
      "picture": "images/image9.jpg",
      "old_price": 200,
      "price": 120,
    },
    {
      "name": "Watch Ping",
      "picture": "images/image7.jpg",
      "old_price": 200,
      "price": 120,
    },
    {
      "name": "Watch Crystal",
      "picture": "images/image4.jpg",
      "old_price": 200,
      "price": 120,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );

        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;
  final prod_old_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
          child: InkWell(onTap: () {},
          child: GridTile(footer: Container(
            color: Colors.white,
            child: ListTile(
              leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          child: Image.asset(prod_picture,
          fit: BoxFit.cover,),),
          ),
      ),
    );
  }
}
