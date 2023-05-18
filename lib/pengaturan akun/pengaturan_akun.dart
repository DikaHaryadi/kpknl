import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PengaturanAkun extends StatelessWidget {
  const PengaturanAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: BigText(
          text: "Pengaturan Akun",
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.chatbubble_ellipses_outline,
              color: Colors.red,
              size: Dimensi.iconSize30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Gap(Dimensi.height10),
          Padding(
            padding: EdgeInsets.only(
                left: Dimensi.width20,
                top: Dimensi.height10,
                bottom: Dimensi.height10),
            child: Row(
              children: [
                Text(
                  "Akun Saya",
                  style: Styles.headLineStyle1.copyWith(
                      color: Colors.grey,
                      fontSize: Dimensi.font16 - 2,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: const [
                ReusableListTile(text: "Keamanan & Akun"),
                ReusableListTile(text: "Alamat Saya"),
                ReusableListTile(text: "Kartu / Rekening Bank"),
              ],
            ),
          ),
          Gap(Dimensi.height10),
          Padding(
            padding: EdgeInsets.only(
                left: Dimensi.width20, bottom: Dimensi.height10),
            child: Row(
              children: [
                Text(
                  "Pengaturan",
                  style: Styles.headLineStyle1.copyWith(
                      color: Colors.grey,
                      fontSize: Dimensi.font16 - 2,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: const [
                ReusableListTile(text: "Pengaturan Chat"),
                ReusableListTile(text: "Pengaturan Notifikasi"),
                ReusableListTile(text: "Pengaturan Privasi"),
                ReusableListTile(text: "Bahasa / Language"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Dimensi.width20, bottom: Dimensi.height10),
            child: Row(
              children: [
                Text(
                  "Bantuan",
                  style: Styles.headLineStyle1.copyWith(
                      color: Colors.grey,
                      fontSize: Dimensi.font16 - 2,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth,
            margin: EdgeInsets.only(bottom: Dimensi.height10),
            color: Colors.white,
            child: Column(
              children: const [
                ReusableListTile(text: "Pusat Bantuan"),
                ReusableListTile(text: "Tips dan Trick"),
                ReusableListTile(text: "Peraturan Komunitas"),
                ReusableListTile(text: "Kebijakan Aplikasi"),
                ReusableListTile(text: "Suka KPKNL Kalimantan?  Nilai kami!"),
                ReusableListTile(text: "Informasi"),
                ReusableListTile(text: "Ajukan Pengapusan Akun"),
              ],
            ),
          ),
          Container(
            width: Dimensi.screenWidth / 1.2,
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.transparent),
            child: Center(
              child: Text(
                "Ganti Akun",
                style: Styles.headLineStyle1.copyWith(
                    fontWeight: FontWeight.normal, fontSize: Dimensi.font20),
              ),
            ),
          ),
          Container(
            width: Dimensi.screenWidth / 1.2,
            height: 40,
            margin: EdgeInsets.only(
                top: Dimensi.height10, bottom: Dimensi.height20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.transparent),
            child: Center(
              child: Text(
                "Logout",
                style: Styles.headLineStyle1.copyWith(
                    fontWeight: FontWeight.normal, fontSize: Dimensi.font20),
              ),
            ),
          ),
          Text(
            "KPKNL Kalimantan v1.0.0",
            style: Styles.headLineStyle2
                .copyWith(color: Colors.black.withOpacity(0.5)),
          ),
          Gap(Dimensi.height20)
        ],
      )),
    );
  }
}

class ReusableListTile extends StatelessWidget {
  final String text;
  const ReusableListTile({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(text,
          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.normal)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
