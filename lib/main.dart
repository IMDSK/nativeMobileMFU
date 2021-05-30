import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant/firebase.dart';
import 'package:nativeMobile/pages/home_page.dart';
import 'package:nativeMobile/controllers/productController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(ProductsController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Averta'),
      home: HomePage(),
    );
  }
}
