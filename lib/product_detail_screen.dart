import 'package:bhh_itech_shop_demo/models/product.dart';

import 'helper view/main_nav_drawer.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {

  final Product _product;

  ProductDetailScreen(this._product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_product.title)),
      body: Text("Hi"),
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
    );
  }
}