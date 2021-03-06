import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nativeMobile/pages/cart_page.dart';
import 'package:nativeMobile/pages/fav_page.dart';
import 'package:nativeMobile/theme/colors.dart';

import '../pages/home_page.dart';

Widget getAppBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/images/home.svg"),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            }),
        Row(
          children: <Widget>[
            IconButton(
                icon: Container(
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                          color: white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  decoration:
                      BoxDecoration(color: black, shape: BoxShape.circle),
                ),
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context, MaterialPageRoute(builder: (_) => CartPage()));
                }),
            IconButton(
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/images/heart_icon.svg"),
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context, MaterialPageRoute(builder: (_) => FavPage()));
                }),
          ],
        )
      ],
    ),
  );
}
