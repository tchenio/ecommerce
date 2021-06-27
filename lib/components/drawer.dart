import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Drawer(// only one child in the drawer

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
    );
  }

}