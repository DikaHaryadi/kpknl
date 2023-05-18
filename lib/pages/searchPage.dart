// import 'package:flutter/material.dart';
// import 'package:kpknl/pages/apartement_sewa.dart';
// import 'package:kpknl/pages/navbar.dart';
// import 'package:kpknl/pages/rumah_sewa.dart';
// import 'package:kpknl/pages/vila_sewa.dart';
// import 'package:kpknl/utilities/apk_styles.dart';
// import 'package:kpknl/utilities/app-colors.dart';
// import 'package:kpknl/utilities/dimension.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';

// class SearchProperty extends StatefulWidget {
//   const SearchProperty({super.key});

//   @override
//   State<SearchProperty> createState() => _SearchPropertyState();
// }

// class _SearchPropertyState extends State<SearchProperty>
//     with SingleTickerProviderStateMixin {
//   late TabController controller;

//   // buat controller TabBar
//   @override
//   void initState() {
//     super.initState();

//     controller = TabController(length: 3, vsync: this);
//     controller.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColor.backGroundColor,
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.white,
//           title: Container(
//             width: Dimensi.screenWidth,
//             decoration: const BoxDecoration(color: Colors.white12),
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: Dimensi.width10,
//                   right: Dimensi.width10,
//                   bottom: Dimensi.height10 - 8),
//               child: TextField(
//                 textInputAction: TextInputAction.done,
//                 decoration: InputDecoration(
//                     fillColor: Colors.black,
//                     border: InputBorder.none,
//                     icon: Icon(
//                       FluentSystemIcons.ic_fluent_search_filled,
//                       color: Colors.black,
//                       size: Dimensi.iconsize25,
//                     ),
//                     suffixIcon: InkWell(
//                       onTap: () {},
//                       child: const Icon(Icons.mic),
//                     ),
//                     hintText: "Cari Lelang Disini",
//                     hintStyle: Styles.headLineStyle2
//                         .copyWith(color: Colors.black.withOpacity(0.3))),
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Ionicons.mail,
//                   color: Colors.black,
//                 )),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Ionicons.notifications,
//                   color: Colors.black,
//                 )),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.favorite,
//                   color: Colors.black,
//                 ))
//           ],
//           bottom: TabBar(
//             controller: controller,
//             tabs: const [
//               Tab(
//                 text: "Rumah",
//                 // icon: Icon(
//                 //   Ionicons.home,
//                 // ),
//               ),
//               Tab(
//                 text: "Apartement",
//                 // icon: Icon(
//                 //   FluentSystemIcons.ic_fluent_building_filled,
//                 // ),
//               ),
//               Tab(
//                 text: "Villa",
//                 // icon: Icon(FluentSystemIcons.ic_fluent_home_filled),
//               ),
//             ],
//             labelColor: Colors.black,
//           ),
//         ),
//         body: TabBarView(
//             controller: controller,
//             children: const [RumahSewa(), ApartementSewa(), VilaSewa()]));
//   }
// }
