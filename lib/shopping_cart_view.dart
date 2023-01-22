import 'package:bhh_itech_shop_demo/handler/shopping_list_handler.dart';
import 'package:bhh_itech_shop_demo/helper%20view/cart_item_view.dart';

import 'helper view/main_nav_drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'styles/styles.dart';
import 'home_screen.dart';

class ShoppingCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var shoppingListHandlerLength =
        context.watch<ShoppingListHandler>().getList().length;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping cart"),
        backgroundColor: Styles.standardColor,
      ),
      body: shoppingListHandlerLength > 0
          ? _bodyNotEmpty(context)
          : _bodyEmpty(context),
      drawer: MainNavDrawer(),
    );
  }

  Widget _bodyNotEmpty(BuildContext context) {
    var shoppingListHandler = context.watch<ShoppingListHandler>();

    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
      child: ListView.builder(
          itemCount: shoppingListHandler.getList().length,
          itemBuilder: (context, index) {
            return CartItemView(index);
          }),
    );
  }

  Widget _bodyEmpty(BuildContext context) {
    //return const Text("It's so empty here:((");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("It's so empty here:(", style: TextStyle(fontSize: 35.0),),
          const Icon(
            Icons.shopping_bag_outlined,
            size: 400.0,
            color: Styles.standardColor,
          ),
          
          TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen()));
          }, 
          child: const Text("Go to home", style: TextStyle(fontSize: 35.0),))
        ],
      ),
    );
  }
}
