import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:nativeMobile/constant/product_data.dart';
import 'package:nativeMobile/pages/cart_page.dart';
import 'package:nativeMobile/model/product_model.dart';
import 'package:nativeMobile/pages/product_detail_page.dart';
import 'package:nativeMobile/controllers/productController.dart';

import 'package:nativeMobile/theme/colors.dart';
import 'package:nativeMobile/widgets/app_bar.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  // final ProductController _productController = Get.put(ProductController());
  final ProductsController productList = Get.put(ProductsController());
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductsController _productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(context),
      body: getBody(),
    );
  }

  Widget getBody() {
    return GetBuilder<ProductsController>(
      init: ProductsController(),
      builder: (_) => ListView.builder(
          itemCount: _productController.products.length,
          itemBuilder: (context, index) {
            return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, left: 30, right: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Shoes",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Column(
                      children: List.generate(
                          _productController.products.length, (index) {
                    return FadeInDown(
                      duration: Duration(milliseconds: 350 * index),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductDetailPage()));
                          },
                          child: Container(
                              child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: grey,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 1,
                                          color: black.withOpacity(0.1),
                                          blurRadius: 2)
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        width: 280,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  '${_productController.products[index].imageMain}',
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      ('${_productController.products[index].name}'),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      ('${_productController.products[index].price} ' +
                                          'Dollar'),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  right: 10,
                                  child: IconButton(
                                      icon: SvgPicture.asset(
                                          "assets/images/heart_icon.svg"),
                                      onPressed: null))
                            ],
                          )),
                        ),
                      ),
                    );
                  }))
                ]);
          }),
    );
  }
}
