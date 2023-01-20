import 'package:bhh_itech_shop_demo/handler/shopping_list_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mocks/mock_products.dart';
import 'models/product.dart';

import 'home_screen.dart';

void main() {
  
  runApp(ChangeNotifierProvider(create: (context) => ShoppingListHandler(), child: MaterialApp(home: HomeScreen())));
}