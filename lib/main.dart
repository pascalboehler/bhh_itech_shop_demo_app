import 'package:bhh_itech_shop_demo/handler/data_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DataHandler(),
      child: MaterialApp(home: HomeScreen())));
}
