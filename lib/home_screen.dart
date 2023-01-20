import 'helper view/product_widget_view.dart';
import 'package:flutter/material.dart';
import 'helper view/main_nav_drawer.dart';
import 'mocks/mock_products.dart';
import 'models/product.dart';
import 'styles/styles.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> _product = MockProducts.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Styles.standardColor,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: _product.length,
                itemBuilder: (BuildContext context, index) {
                  return ProductWidgetView(_product[index]);
                })),
        drawer: MainNavDrawer());
  }
}
