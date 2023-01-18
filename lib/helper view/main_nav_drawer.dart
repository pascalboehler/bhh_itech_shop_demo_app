import 'package:flutter/material.dart';

class MainNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Text("ITECH-BHH Merch Shop")),
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
        print("Switching to $title Screen");

        Navigator.pop(context);
      }),
    );
  }
}
