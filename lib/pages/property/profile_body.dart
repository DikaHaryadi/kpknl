import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:ionicons/ionicons.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kpknl/utilities/category.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:kpknl/utilities/smallText.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(
                top: Dimensi.height10, bottom: Dimensi.height10),
            height: Dimensi.conTopProfile,
            color: Colors.white,
            child: ListTile(
                leading: CircleAvatar(
                  radius: Dimensi.radius30,
                  backgroundImage:
                      const AssetImage("assets/images/megumin.jpg"),
                ),
                title: BigText(
                  text: "Nama User-nya",
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.black54,
                    ),
                    Gap(Dimensi.width5),
                    Text(
                      "Jakarta Pusat",
                      style: Styles.headLineStyle2.copyWith(
                          color: Colors.grey, fontSize: Dimensi.font16 - 2),
                    )
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.getPengaturanAkunSection());
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ))),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(Ionicons.home_outline),
              title: BigText(
                text: "Tagihan Sewa Rumah",
                size: Dimensi.font16 - 2,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.notes),
                  title: Text("Pesanan Saya",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: Dimensi.height30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CategoryIcons(
                          iconData: FluentSystemIcons.ic_fluent_home_regular),
                      CategoryIcons(
                          iconData:
                              FluentSystemIcons.ic_fluent_building_filled),
                      CategoryIcons(iconData: Ionicons.home),
                    ],
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/bank_indonesia.ico",
                    // width: 100,
                    height: 80,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: Dimensi.screenWidth / 2.8),
                    child: Text("Transfer Gratis",
                        style: Styles.headLineStyle2
                            .copyWith(fontWeight: FontWeight.normal)),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: ListTile(
              leading: const Icon(Ionicons.home_outline),
              title: BigText(
                text: "Tagihan Sewa Rumah",
                size: Dimensi.font16 - 2,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Ionicons.wallet),
                  title: Text("Dompet Saya",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: Dimensi.height30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CategoryIcons(
                          iconData: FluentSystemIcons.ic_fluent_payment_filled),
                      CategoryIcons(
                          iconData: FluentSystemIcons.ic_fluent_payment_filled),
                      CategoryIcons(
                          iconData: FluentSystemIcons.ic_fluent_payment_filled),
                      CategoryIcons(
                          iconData: FluentSystemIcons.ic_fluent_payment_filled),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home_filled),
                  title: Text("Mulai Lelang Rumah Anda",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: Text("Favorite Saya",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: const Icon(Ionicons.timer_outline),
                  title: Text("Terakhir Dilihat",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: const Icon(Ionicons.star_outline),
                  title: Text("Penilaian Saya",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.toNamed(RouteHelper.getPengaturanAkunSection());
                  },
                  leading: const Icon(Ionicons.person),
                  title: Text("Pengaturan Akun",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(RouteHelper.gethelpSection());
                  },
                  leading: const Icon(Ionicons.help_circle_outline),
                  title: Text("Pusat Bantuan",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: const Icon(Icons.headphones_outlined),
                  title: Text("Chat dengan Admin KPKNL",
                      style: Styles.headLineStyle2
                          .copyWith(fontWeight: FontWeight.normal)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            height: Dimensi.conTopProfile,
            color: Colors.white,
            child: ListTile(
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap(Dimensi.height10 + 2),
                    Text(
                      "Di Awasi Oleh :",
                      style: Styles.headLineStyle1.copyWith(
                          color: Colors.grey, fontSize: Dimensi.font16 + 2),
                    ),
                    Gap(Dimensi.height5),
                    Text(
                      "Kementrian Keuangan",
                      style: Styles.headLineStyle2.copyWith(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: Dimensi.font16 - 2),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(
                      right: Dimensi.width10 - 2, top: Dimensi.height10),
                  child: CircleAvatar(
                    radius: Dimensi.radius30,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      "assets/images/kementrian_keuangan.ico",
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
