import 'package:bhh_itech_shop_demo/models/product.dart';

import 'helper view/main_nav_drawer.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product _product;

  ProductDetailScreen(this._product);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _amountSel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._product.title)),
      body: _detailViewBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Adding item to cart");
        },
        backgroundColor: Styles.standardColor,
        child: const Icon(
          Icons.add_shopping_cart,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _detailViewBody(BuildContext context) {
    return ListView(
      children: [
        _titleImage(),
        _titleText(),
        _priceAmountClicker(),
        _productDescription()
      ],
    );
  }

  Widget _titleImage() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10.0, bottom: 5.0, top: 10.0),
      child: Container(
        height: 250,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
                image: AssetImage('assets/images/testImage.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }

  Widget _titleText() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
      child: Text(
        widget._product.title,
        style: Styles.productTitle,
      ),
    );
  }

  Widget _priceAmountClicker() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(widget._product.price, style: Styles.productPrice),
              Spacer(),
              _numPicker(),
            ],
          ),
          SizedBox(
            height: 45.0,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print("Adding to card");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Styles.standardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0))),
              child: Text("Add to card"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _productDescription() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Description",
                style: Styles.productDescriptionTitle,
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  widget._product.description,
                  style: Styles.productDescription,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _numPicker() {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (_amountSel > 1) {
                  _amountSel -= 1;
                }
              });
            },
            icon: const Icon(Icons.exposure_minus_1_rounded)),
        Text(
          "$_amountSel",
          style: Styles.amountSelector,
        ),
        IconButton(
            onPressed: () {
              setState(() {
                _amountSel += 1;
              });
            },
            icon: const Icon(Icons.exposure_plus_1_rounded))
      ],
    );
  }
}
