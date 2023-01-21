import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../handler/shopping_list_handler.dart';

class CartItem extends StatelessWidget {
  int _index;

  CartItem(this._index);

  @override
  Widget build(BuildContext context) {
    return Row(children: [_cartItemTitle(context), Spacer(), _cartItemTotalPrice(context)],);
  }

  Widget _cartItemTitle(BuildContext context) {
    return Text(context.read<ShoppingListHandler>().getList()[_index].product.title);
  }

  Widget _cartItemTotalPrice(BuildContext context) {
    
    double price = context.read<ShoppingListHandler>().getList()[_index].product.price * context.read<ShoppingListHandler>().getList()[_index].amount;

    return Text("$price €");
  }
}
