import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductWidgetView extends StatelessWidget {
  //final Product displayedProduct;

  //const ProductWidgetView(this.displayedProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.blueAccent),
      child: const Center(child: Text("Hello2)")),
    );
  }
}
