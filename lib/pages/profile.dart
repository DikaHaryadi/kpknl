import 'package:flutter/material.dart';
import 'package:kpknl/pages/property/profile_body.dart';
import 'package:kpknl/pages/property/video_kpknl.dart';
import 'package:kpknl/pages/rumah_sewa.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:get/get.dart';
import 'package:kpknl/utilities/category.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:kpknl/utilities/smallText.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  // List<FAQ> data = [];

  @override
  void initState() {
    // dataList.forEach((element) {
    //   data.add(FAQ.fromJson(element));
    // });
    super.initState();
    // buat controller TabBar
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    title: Image.asset(
                      "assets/images/kpknl_logo.png",
                      width: Dimensi.conLogoAppBarw,
                      height: Dimensi.conLogoAppBarh,
                    ),
                    bottom: TabBar(
                      controller: controller,
                      tabs: const [
                        Tab(
                          text: "Beli",
                        ),
                        Tab(
                          text: "Video",
                        ),
                      ],
                      labelColor: Colors.black,
                    ),
                  )
                ],
            body: TabBarView(
                controller: controller,
                children: const [ProfileBody(), VideoBody()])));
  }
}

// Widget _buildList(FAQ list) {
//   if (list.subMenu.isEmpty) {
//     return Builder(builder: (context) {
//       return ListTile(
//           onTap: () => Navigator.push(context,
//               MaterialPageRoute(builder: (context) => SubCategory(list.judul))),
//           title: Center(child: Text(list.judul)));
//     });
//   }
//   return ExpansionTile(
//     leading: Icon(list.iconmenu),
//     title: Text(
//       list.judul,
//       style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//     ),
//     children: list.subMenu.map(_buildList).toList(),
//   );
// }

// class SubCategory extends StatelessWidget {
//   String name;
//   SubCategory(this.name, {Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColor.backGroundColor,
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.black),
//           centerTitle: true,
//           elevation: 0,
//           title: Text(name, style: const TextStyle(color: Colors.black)),
//           backgroundColor: Colors.white,
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Get.toNamed(RouteHelper.helpSection);
//               },
//               icon: const Icon(
//                 Icons.search,
//                 color: Colors.black,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.notifications,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//         body: Center(
//           child: Text("This is $name category screen"),
//         ));
//   }
// }
