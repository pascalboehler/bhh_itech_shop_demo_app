import 'package:bhh_itech_shop_demo/handler/shopping_list_handler.dart';
import 'package:bhh_itech_shop_demo/helper%20view/cart_item_view.dart';

import 'helper view/main_nav_drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';

class ShoppingCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var shoppingListHandler = context.watch<ShoppingListHandler>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping cart"),
        backgroundColor: Styles.standardColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
        child: ListView.builder(
            itemCount: shoppingListHandler.getList().length,
            itemBuilder: (context, index) {
              return CartItemView(index);
            }),
      ),
      drawer: MainNavDrawer(),
    );
  }
}
