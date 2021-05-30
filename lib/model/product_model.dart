import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:nativeMobile/pages/home_page.dart';
import 'package:get/get.dart';

class ProductModel {
  static const ID = "id";
  static const IMAGE = "image";
  static const IMAGEMAIN = "image";
  static const NAME = "name";
  static const STOCK = "stock";
  static const PRICE = "price";

  String id;
  String image;
  String imageMain;
  String name;
  String stock;
  double price;

  ProductModel(
      {this.id, this.image, this.imageMain, this.name, this.stock, this.price});

  ProductModel.fromMap(Map<String, dynamic> data) {
    id = data[ID];
    image = data[IMAGE];
    imageMain = data[IMAGEMAIN];
    name = data[NAME];
    stock = data[STOCK];
    price = data[PRICE].toDouble();
  }
}

// class ProductItem extends GetxController {
//   final String id;
//   final String name;
//   final String img;
//   final double price;
//   final int stock;
//   final int amount;
//   final List mulImg;
//   final List sizes;
//   bool isFavorite;

//   ProductItem({
//     @required this.id,
//     @required this.name,
//     @required this.img,
//     @required this.price,
//     @required this.stock,
//     @required this.amount,
//     @required this.mulImg,
//     @required this.sizes,
//     this.isFavorite = false,
//   });

//   // productDetails() {
//   //   Get.to(
//   //     HomePage(),
//   //     arguments: productList
//   //         .findById(
//   //             id, name, img, price, stock, amount, mulImg, sizes, isFavorite)
//   //         .title,
//   //     transition: Transition.rightToLeft,
//   //   );
//   // }

//   void toggleFavoriteStatus() {
//     isFavorite = !isFavorite;
//     update();
//   }
// }
