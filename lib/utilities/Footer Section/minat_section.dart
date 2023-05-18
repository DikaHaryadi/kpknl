import 'package:flutter/material.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app_lelang_rumah.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/smallText.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

// ignore: must_be_immutable
class MinatSection extends StatelessWidget {
  MinatSection({
    super.key,
  });
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var handphoneController = TextEditingController();
  var pesanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            showShearButton(context);
          },
          child: Row(
            children: [
              Icon(
                Ionicons.help_circle,
                size: Dimensi.iconSize30,
              ),
              Gap(Dimensi.width5),
              SmallText(
                text: "Minat?",
                size: Dimensi.font16,
                color: Colors.blue,
              )
            ],
          )),
    );
  }

  void showShearButton(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensi.radius15)),
                child: Container(
                  margin: EdgeInsets.only(
                      top: Dimensi.height10,
                      left: Dimensi.width20,
                      right: Dimensi.width20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Penawaran Asset",
                        style: Styles.headLineStyle1,
                      ),
                      const Divider(),
                      Gap(Dimensi.height5),
                      Text(
                        "Tinggalkan kontak anda disini, kami akan menghubungi anda untuk penawaran terbaik",
                        style: Styles.headLineStyle2
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Gap(Dimensi.height10),
                      AppTextField(
                          textController: nameController,
                          hintText: "Masukan Nama Anda",
                          iconData: Ionicons.person),
                      Gap(Dimensi.height10),
                      AppTextField(
                          textController: emailController,
                          hintText: "Masukan Email Aktif Anda",
                          iconData: Icons.email),
                      Gap(Dimensi.height10),
                      AppTextField(
                          textController: handphoneController,
                          hintText: "Masukan Nomer Telpon Aktif Anda",
                          iconData: FontAwesomeIcons.mobile),
                      Gap(Dimensi.height10),
                      AppTextField(
                          textController: pesanController,
                          hintText: "Masukan Pesan Anda Untuk Penjual",
                          iconData: FontAwesomeIcons.message),
                      Gap(Dimensi.height20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(80, 30)),
                              onPressed: () {},
                              child: const Text("Ikuti Lelang")),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(80, 30)),
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text("Keluar")),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
}
