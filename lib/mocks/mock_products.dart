import 'package:flutter/material.dart';

import '../models/product.dart';

class MockProducts {
  static List<Product> fetchAll() {
    return [
      Product(
          id: 1,
          title: "T-Shirt",
          imageProv: const AssetImage('assets/images/blue.jpg'),
          price: 15.99,
          description:
              "Kurzärmeliges Oberteil aus gestricktem oder gewirktem, elastischen, dehnbaren Gewebe ohne Kragen. Also ein T-Shirt. Ist halt ein T-Shirt ne?"),
      Product(
          id: 2,
          title: "T-Shirt",
          imageProv: const AssetImage('assets/images/black.jpg'),
          price: 15.99,
          description: "Test"),
      Product(
          id: 3,
          title: "T-Shirt",
          imageProv: const AssetImage('assets/images/dark_green.jpg'),
          price: 15.99,
          description: "Test"),
      Product(
          id: 4,
          title: "T-Shirt",
          imageProv: const AssetImage('assets/images/white.jpg'),
          price: 15.99,
          description: "Test"),
      Product(
          id: 5,
          title: "T-Shirt",
          imageProv: const AssetImage('assets/images/blue.jpg'),
          price: 15.99,
          description: "Test")
    ];
  }
}
