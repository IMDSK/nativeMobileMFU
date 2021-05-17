import 'package:flutter/material.dart';
import 'package:nativeMobile/pages/home_page.dart';
import 'package:nativeMobile/controllers/productController.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Averta'),
    home: HomePage(),
  ));
}
