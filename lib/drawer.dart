import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        // DrawerHeader(
        //     decoration: BoxDecoration(color: Colors.purple),
        //     // ignore: prefer_const_constructors
        //     child: Text(
        //       "LION",
        //       style: TextStyle(color: Colors.white),
        //     )),
        UserAccountsDrawerHeader(
          accountName: Text("LION"),
          accountEmail: Text("LION@gmail.com"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://2.bp.blogspot.com/-LRRzMp-zTxA/UFM5fJabQPI/AAAAAAAAJ_o/LWp-23eq3VU/s1600/Male+Lion+Wallpapers+2.jpg")),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("ACCOUNT"),
          subtitle: Text("personal"),
          trailing: Icon(Icons.edit),
          onLongPress: (() {}),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("ACCOUNT"),
          subtitle: Text("personal"),
          trailing: Icon(Icons.edit),
          onLongPress: (() {}),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("ACCOUNT"),
          subtitle: Text("personal"),
          trailing: Icon(Icons.edit),
          onLongPress: (() {}),
        ),
      ],
    ));
  }
}
