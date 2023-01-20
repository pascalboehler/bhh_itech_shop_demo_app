import 'package:bhh_itech_shop_demo/home_screen.dart';

import '../shopping_card_view.dart';
import 'package:flutter/material.dart';
import '../styles/styles.dart';

class MainNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Image(image: AssetImage('assets/logos/bhh_logo.png')),
          ),
          _navItem(context, "Home"),
          _navItem(context, "Shopping card"),
          _navItem(context, "User"),
          _navItem(context, "About"),
        ],
      ),
    );
  }

  Widget _navItem(BuildContext context, String title) {
    return ListTile(
      title: Text(title),
      onTap: (() {
        _navChangeView(context, title);
      }),
    );
  }

  void _navChangeView(BuildContext context, String title) {
    print("Switching to $title Screen");
    Navigator.of(context).pop();
    switch (title) {
      case "Home":
        {
          print("$title was selected");
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen()));
        }
        break;
      case "Shopping card":
        {
          print("$title was selected");
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ShoppingCardView()));
        }
        break;
      case "User":
        {
          print("$title was selected");
        }
        break;
      case "About":
        {
          print("$title was selected");
        }
    }
    //Navigator.pop(context);
  }
}
