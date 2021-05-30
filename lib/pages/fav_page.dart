// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// // import 'package:nativeMobile/constant/product_data.dart';
// import 'package:nativeMobile/theme/colors.dart';
// import 'package:nativeMobile/widgets/app_bar.dart';

// class FavPage extends StatefulWidget {
//   @override
//   _FavPageState createState() => _FavPageState();
// }

// class _FavPageState extends State<FavPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       appBar: getAppBar(context),
//       body: getBody(),
//     );
//   }

//   Widget getBody() {
//     return ListView(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
//           child: Text(
//             "Favorite",
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
//           ),
//         ),
//         Column(
//           children: List.generate(3, (index) {
//             return FadeInDown(
//               duration: Duration(milliseconds: 350 * index),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
//                 child: Row(
//                   children: <Widget>[
//                     Container(
//                       decoration: BoxDecoration(
//                           color: grey,
//                           boxShadow: [
//                             BoxShadow(
//                                 spreadRadius: 0.5,
//                                 color: black.withOpacity(0.1),
//                                 blurRadius: 1)
//                           ],
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                             top: 10, left: 25, right: 25, bottom: 25),
//                         child: Column(
//                           children: <Widget>[
//                             Center(
//                               child: Container(
//                                 width: 120,
//                                 height: 70,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage("assets/images/" +
//                                             products[index]['img']),
//                                         fit: BoxFit.cover)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Expanded(
//                         child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           products[index]['name'],
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w600),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Text(
//                               "\$ " + products[index]['price'].toString(),
//                               style: TextStyle(
//                                   fontSize: 15, fontWeight: FontWeight.w500),
//                             ),
//                             Container(
//                                 width: 50,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     boxShadow: [
//                                       BoxShadow(
//                                           spreadRadius: 0.5,
//                                           blurRadius: 1,
//                                           color: black.withOpacity(0.1))
//                                     ],
//                                     color: grey),
//                                 child: Center(
//                                     child: IconButton(
//                                         icon: SvgPicture.asset(
//                                             "assets/images/delete.svg",
//                                             color: Colors.red,
//                                             height: 20,
//                                             width: 20),
//                                         onPressed: null))),
//                           ],
//                         )
//                       ],
//                     ))
//                   ],
//                 ),
//               ),
//             );
//           }),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//       ],
//     );
//   }
// }
