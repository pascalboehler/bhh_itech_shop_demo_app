import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String price;
  final ImageProvider imageProv;
  final String description;

  Product(
      {required this.id,
      required this.title,
      required this.imageProv,
      required this.price,
      required this.description});
}
