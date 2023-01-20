import 'helper view/main_nav_drawer.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';

class ShoppingCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping card"), backgroundColor: Styles.standardColor,),
      body: Text("Hi"),
      drawer: MainNavDrawer(),
    );
  }
}
