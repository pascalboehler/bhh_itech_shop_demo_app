import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../handler/shopping_list_handler.dart';
import '../styles/styles.dart';

class CartItemView extends StatelessWidget {
  int _index;

  CartItemView(this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.blueGrey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            _deleteButton(context),
            _cartItemTitle(context),
            const Spacer(),
            _cartItemTotalPrice(context)
          ],
        ),
      ),
    );
  }

  Widget _cartItemTitle(BuildContext context) {
    return Text(
      context.read<ShoppingListHandler>().getList()[_index].product.title,
      style: Styles.productTitle,
    );
  }

  Widget _cartItemTotalPrice(BuildContext context) {
    double price =
        context.read<ShoppingListHandler>().getList()[_index].product.price *
            context.read<ShoppingListHandler>().getList()[_index].amount;

    return Text(
      "$price €",
      style: Styles.productPrice,
    );
  }

  Widget _deleteButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          print("Item will be deleted now");
          context.read<ShoppingListHandler>().deleteItemAt(_index);
        },
        icon: const Icon(Icons.clear));
  }
}
