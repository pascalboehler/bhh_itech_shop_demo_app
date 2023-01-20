import 'package:bhh_itech_shop_demo/handler/shopping_list_handler.dart';

import 'helper view/main_nav_drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';

class ShoppingCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping card"),
        backgroundColor: Styles.standardColor,
      ),
      body: ListView.builder(
          itemCount: context.read<ShoppingListHandler>().getList().length,
          itemBuilder: (context, index) {
            return Text(context
                .read<ShoppingListHandler>()
                .getList()[index]
                .product
                .title);
          }),
      drawer: MainNavDrawer(),
    );
  }
}
