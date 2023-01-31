import 'package:flutter/material.dart';

import 'shopping_list_handler.dart';
import 'user_login_handler.dart';

class DataHandler extends ChangeNotifier {
  final userHandler = UserLoginHandler();
  final shoppingListHandler = ShoppingListHandler();
}