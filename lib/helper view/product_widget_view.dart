import 'package:flutter/material.dart';

import '../models/product.dart';
import '../styles/styles.dart';

class ProductWidgetView extends StatelessWidget {
  //final Product displayedProduct;

  //const ProductWidgetView(this.displayedProduct);

  @override
  Widget build(BuildContext context) {
    //return ElevatedButton(onPressed: (){fun();}, child: _buttonDesign());
    return _buttonDesign();
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
          "Hi",
          style: Styles.productWidgetTitleStyle,
        ),
      ),
    );
  }

  void fun() {
    print("Hi");
  }
}
