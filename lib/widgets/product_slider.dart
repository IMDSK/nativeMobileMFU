import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nativeMobile/theme/colors.dart';
import 'package:nativeMobile/controllers/productController.dart';
import 'package:get/get.dart';

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 5,
        decoration: BoxDecoration(
          color: black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

/*
 * for slider home page
 */
class ProductSlider extends StatefulWidget {
  final ProductController productList = Get.put(ProductController());

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  final ProductController _productController = Get.find();
  int activeIndex = 0;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          // overflow: Overflow.visible,
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                  itemCount: _productController.productList.length,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/${_productController.productList[index].mulImg}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setActiveDot(index);
                    },
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    viewportFraction: 1.0,
                  )),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List.generate(_productController.productList.length, (idx) {
                  return activeIndex == idx ? ActiveDot() : InactiveDot();
                }))
          ],
        ),
      ),
    );
  }
}
