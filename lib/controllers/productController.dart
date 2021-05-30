import 'dart:async';
import 'package:get/get.dart';
import 'package:nativeMobile/constant/firebase.dart';
import 'package:nativeMobile/model/product_model.dart';

class ProductsController extends GetxController {
  static ProductsController instance = Get.find();
  RxList<ProductModel> products = RxList<ProductModel>([]);
  String collection = "products";

  @override
  onReady() {
    super.onReady();
    products.bindStream(getAllProducts());
  }

  Stream<List<ProductModel>> getAllProducts() =>
      firebaseFirestore.collection(collection).snapshots().map((query) =>
          query.docs.map((item) => ProductModel.fromMap(item.data())).toList());
}

// import 'package:flutter/material.dart';
// import 'package:nativeMobile/model/product_model.dart';
// import 'package:get/get.dart';

// class ProductController extends GetxController {
//   // List of products in shop, static
//   // var productList = List<ProductItem>().obs;
//   List<ProductItem> productList = [];

//   ProductController();

//   // List of product in cart, dynamic
//   var cartList = <ProductItem>[].obs;
//   var totalPrice = 0.0.obs;

// // load data first
//   @override
//   void onInit() {
//     productList = [
//       ProductItem(
//         id: "1",
//         img: "chicagomain.jpg",
//         name: "Off-White Chicago",
//         price: 4910,
//         stock: 2,
//         amount: 0,
//         mulImg: [
//           "chicagomain.jpg",
//           "chicago1.jpg",
//           "chicago2.jpg",
//           "chicago3.jpg"
//         ],
//         sizes: [
//           "40",
//           "41",
//           "41,5",
//           "42",
//           "43",
//           "44",
//         ],
//       ),
//       ProductItem(
//         id: "2",
//         img: "nrgmain.jpg",
//         name: "Off-White NRG",
//         price: 1350,
//         stock: 3,
//         amount: 0,
//         mulImg: [
//           "nrgmain.jpg",
//           "nrg1.jpg",
//         ],
//         sizes: [
//           "40",
//           "41",
//           "41,5",
//           "42",
//           "43",
//           "44",
//         ],
//       ),
//       ProductItem(
//         id: "3",
//         img: "uncmain.jpg",
//         name: "Off-White UNC",
//         price: 1460,
//         stock: 4,
//         amount: 0,
//         mulImg: [
//           "uncmain.jpg",
//           "unc2.jpg",
//           "unc1.jpg",
//         ],
//         sizes: [
//           "40",
//           "41",
//           "41,5",
//           "42",
//           "43",
//           "44",
//         ],
//       ),
//     ];
//     update();
//     super.onInit();
//   }

//   List get myitems => [...productList];

//   ProductItem findById(String id) {
//     return productList.firstWhere((prod) => prod.id == id);
//   }

//   void addProduct() {
// //    _items.add(value);
//     update();
//   }
// }

// // if no products
// // if (productList.isEmpty) {
// //   productList.add(ProductItem(
// //     img: "chicagomain",
// //     name: 'Off-White Chicago',
// //     price: 4910,
// //   ));
// //   productList.add(ProductItem(
// //     img: "nrgmain",
// //     name: 'Off-White NRG',
// //     price: 1350,
// //   ));
// //   productList.add(ProductItem(
// //     img: "uncmain",
// //     name: 'Off-White UNC',
// //     price: 1460,
// //   ));
// // }
// // }
// // void onInit() {
// //   super.onInit();
// //   print('==============> Load data');

// //   // if no products
// //   if (productList.isEmpty) {
// //     productList.add(ProductItem(
// //       img: "chicagomain",
// //       name: 'Off-White Chicago',
// //       price: 4910,
// //     ));
// //     productList.add(ProductItem(
// //       img: "nrgmain",
// //       name: 'Off-White NRG',
// //       price: 1350,
// //     ));
// //     productList.add(ProductItem(
// //       img: "uncmain",
// //       name: 'Off-White UNC',
// //       price: 1460,
// //     ));
// //   }
// // }

// //   void addToCart(int index) {
// //     print('==============> add product');

// //     // is cart empty ?
// //     if (cartList.isEmpty) {
// //       cartList.add(productList[index]);
// //       cartList[0].amount = 1;
// //       totalPrice.value += cartList[0].price;
// //       return;
// //     }

// //     // the product exists or not?
// //     int i = 0;
// //     for (i = 0; i < cartList.length; i++) {
// //       if (cartList[i].name == productList[index].name) {
// //         // prodect exits
// //         cartList[i].amount++;
// //         totalPrice.value += cartList[i].price;

// //         break;
// //       }
// //     }

// //     if (i == cartList.length) {
// //       // product does not exist in cart
// //       cartList.add(productList[index]);
// //       cartList.last.amount = 1;
// //       totalPrice.value += cartList.last.price;
// //     }

// //     print('Cart leng ${cartList.length}');
// //   }

// //   void deleteProduct(int index) {
// //     // cartList[index].amount--;

// //     // delete a unit of product from cart
// //     if (cartList[index].amount > 1) {
// //       var product = cartList[index];
// //       product.amount--;
// //       cartList[index] = product;
// //     } else {
// //       cartList.removeAt(index);
// //     }
// //   }

// //   totoal() {
// //     var testTotal = 0.0.obs;

// //     for (int i = 0; i < cartList.length; i++) {
// //       testTotal.value += cartList[i].amount * cartList[i].price;
// //       print('================== ${testTotal}');
// //       print(cartList[i].price);
// //     }

// //     return testTotal;
// //   }
// // }
