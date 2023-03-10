import 'package:bhh_itech_shop_demo/product_detail_screen.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';
import '../handler/shopping_list_handler.dart';

class ProductWidgetView extends StatelessWidget {
  final Product displayedProduct;

  ProductWidgetView(this.displayedProduct, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showProductDetailView(context);
        },
        child:
            Padding(padding: const EdgeInsets.all(10), child: _buttonDesign()));
  }

  Widget _buttonDesign() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: displayedProduct.imageProv, fit: BoxFit.fitHeight),
          borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          color: Colors.white),
      /*child: Center(
        child: Text(
          displayedProduct.title,
          style: Styles.productWidgetTitleStyle,
        ),
      ),*/
    );
  }

  void showProductDetailView(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>
            ProductDetailScreen(displayedProduct)));
  }
}
