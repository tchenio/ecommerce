import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // only one child in the drawer

      child: ListView(
        children: <Widget>[
          //HEADER

          UserAccountsDrawerHeader(
            accountName: Text('Billy'),
            accountEmail: Text("tchenio.j@gmail.com"),
            currentAccountPicture: GestureDetector(
              child:  const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
          ),

          //BODY
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person, color: Colors.purple),
            ),
          ),
         InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket, color: Colors.green),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard, color: Colors.blue),
            ),
          ),
           InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.pinkAccent),
            ),
          ),
           InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.black38),
            ),
          ),
           InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.cyan),
            ),
          ),
        ],
      ),
    );
  }
}
