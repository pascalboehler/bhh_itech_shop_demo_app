import 'package:flutter/material.dart';
import 'mocks/mock_products.dart';
import 'models/product.dart';

import 'home_screen.dart';

void main() {
  final List<Product> mockProducts = MockProducts.fetchAll();

  runApp(MaterialApp(home: HomeScreen(mockProducts)));
}
