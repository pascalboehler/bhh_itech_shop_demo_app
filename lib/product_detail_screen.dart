import 'package:bhh_itech_shop_demo/models/product.dart';
import 'package:bhh_itech_shop_demo/models/shopping_list_item.dart';

import 'helper view/main_nav_drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';
import 'handler/shopping_list_handler.dart';

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
      appBar: AppBar(
        title: Text(widget._product.title),
        backgroundColor: Styles.standardColor,
      ),
      body: _detailViewBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addProductToShoppingListWithAmount(
              context, widget._product, _amountSel);
        },
        backgroundColor: Styles.standardColor,
        child: const Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _detailViewBody(BuildContext context) {
    return ListView(
      children: [
        _titleImage(),
        _titleText(),
        _priceAmountClicker(context),
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
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
                image: widget._product.imageProv, fit: BoxFit.cover)),
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

  Widget _priceAmountClicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("${widget._product.price * _amountSel} €", style: Styles.productPrice),
              Spacer(),
              _numPicker(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: SizedBox(
              height: 45.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _addProductToShoppingListWithAmount(
                      context, widget._product, _amountSel);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Styles.standardColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0))),
                child: Text("Add to card"),
              ),
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
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget._product.description,
                    style: Styles.productDescription,
                    softWrap: true,
                    maxLines: 100,
                  ),
                ),
              ],
            ),
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
            icon: const Icon(Icons.remove_circle_outline)),
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
            icon: const Icon(Icons.add_circle_outline))
      ],
    );
  }

  void _addProductToShoppingListWithAmount(
      BuildContext context, Product product, amount) {
    var shoppingListHandler = context.read<ShoppingListHandler>();
    shoppingListHandler
        .addElement(ShoppingListItem(product: product, amount: amount));
  }
}
