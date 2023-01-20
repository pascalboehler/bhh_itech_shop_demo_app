import 'package:flutter/material.dart';

import '../models/shopping_list_item.dart';

class ShoppingListHandler extends ChangeNotifier{
  List<ShoppingListItem> _shoppingList = [];

  void addElement(ShoppingListItem item) {
    _shoppingList.add(item);

    notifyListeners();
  }

  List<ShoppingListItem> getList() {
    return _shoppingList;
  }
}