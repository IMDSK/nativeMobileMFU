import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:nativeMobile/pages/home_page.dart';
import 'package:get/get.dart';

class ProductItem extends GetxController {
  final String id;
  final String name;
  final String img;
  final double price;
  final int stock;
  final int amount;
  final List mulImg;
  final List sizes;
  bool isFavorite;

  ProductItem({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.price,
    @required this.stock,
    @required this.amount,
    @required this.mulImg,
    @required this.sizes,
    this.isFavorite = false,
  });

  // productDetails() {
  //   Get.to(
  //     HomePage(),
  //     arguments: productList
  //         .findById(
  //             id, name, img, price, stock, amount, mulImg, sizes, isFavorite)
  //         .title,
  //     transition: Transition.rightToLeft,
  //   );
  // }

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    update();
  }
}
