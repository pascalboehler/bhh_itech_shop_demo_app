import 'helper view/product_widget_view.dart';
import 'package:flutter/material.dart';
import 'helper view/main_nav_drawer.dart';
import 'models/product.dart';

class HomeScreen extends StatelessWidget {
  //final List<Product> _products;

  //HomeScreen(this._products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ProductWidgetView()])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO: Do something
            print("Adding item to cart");
          },
          backgroundColor: Colors.greenAccent,
          child: const Icon(
            Icons.add_shopping_cart,
            color: Colors.black,
          ),
        ),
        drawer: MainNavDrawer());
  }
}
