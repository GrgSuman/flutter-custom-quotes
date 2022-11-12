import 'package:flutter/material.dart';

Widget myDrawer() {
  return Drawer(
    child: Container(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/drawer.png",
                fit: BoxFit.fill,
              )),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.favorite,
            ),
            title: Text("Liked"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.facebook,
            ),
            title: Text("Facebook"),
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.details,
            ),
            title: Text("About"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Settings"),
          ),
        ],
      ),
    ),
  );
}
