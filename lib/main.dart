import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Own importation
import 'package:store/components/horizontal_listview.dart';
import 'package:store/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/image9.jpg'),
          AssetImage('images/image7.jpg'),
          AssetImage('images/image1.jpg'),
          AssetImage('images/image3.jpg'),
          AssetImage('images/image17.jpg'),
          AssetImage('images/image14.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotSpacing: 9,
        indicatorBgPadding: 3,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("ShopApp"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
//            header

            new UserAccountsDrawerHeader(
              accountName: Text("Jessy Mukund"),
              accountEmail: Text("Jessymukund@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

//            body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("My account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("My orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("Categories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: new Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
//          image Carousel begin here
          image_carousel,

//          Padding wigdet
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Categories"),
          ),
//          Horizontal list view begins here

          HorizontalList(),
          
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text("Recent product"),),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
