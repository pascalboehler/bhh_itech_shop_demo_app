import 'package:bhh_itech_shop_demo/product_detail_screen.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';

class ProductWidgetView extends StatelessWidget {
  final Product displayedProduct;

  const ProductWidgetView(this.displayedProduct);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showProductDetailView(context);
        },
        child: Padding(padding: EdgeInsets.all(10), child: _buttonDesign()));
  }

  Widget _buttonDesign() {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/testImage.jpg'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          color: Colors.blueAccent),
      child: Center(
        child: Text(
          displayedProduct.title,
          style: Styles.productWidgetTitleStyle,
        ),
      ),
    );
  }

  void showProductDetailView(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>
            ProductDetailScreen(displayedProduct)));
  }
}
