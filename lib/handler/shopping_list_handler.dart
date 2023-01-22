import 'package:flutter/material.dart';
import '../models/shopping_list_item.dart';

class ShoppingListHandler extends ChangeNotifier {
  final List<ShoppingListItem> _shoppingList = [];

  void addElement(ShoppingListItem item) {
    _shoppingList.add(item);

    notifyListeners();
  }

  void deleteItemAt(int index) {
    _shoppingList.removeAt(index);

    notifyListeners();
  }

  List<ShoppingListItem> getList() {
    return _shoppingList;
  }
}
