
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart' show Carousel;
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: Text('Mad\'y Shop'),
        actions: <Widget>[
          new IconButton(onPressed: (){} , icon: Icon(Icons.search, color: Colors.white,)),
          new IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color:Colors.white))
        ],
      ),
      drawer: new Drawer(// only one child in the drawer

        child: new ListView(
          children: <Widget>[

            //HEADER

            new UserAccountsDrawerHeader(

              accountName: Text('Billy'),
              accountEmail: Text("tchenio.j@gmail.com"),
              currentAccountPicture: GestureDetector(
                child : new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person,color:Colors.white),
                ),
              ),
              decoration : new BoxDecoration(
                color: Colors.purple,
              ),
            ),

            //BODY
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.black),

              ),
            ),
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.purple),

              ),
            ),
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.green),

              ),
            ),
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.blue),

              ),
            ),
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.pinkAccent),

              ),
            ),
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black38),

              ),
            ),
            new InkWell(
              onTap: (){},
              child: new ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.cyan),

              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: [
          imageCarousel
        ],
      ),
    );
  }
}
