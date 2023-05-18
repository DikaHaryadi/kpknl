import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpknl/pages/property/info_penyewa.dart';
import 'package:kpknl/pages/property/info_server.dart';
import 'package:kpknl/pages/property/isi_property.dart';
import 'package:kpknl/pages/property/tipe_bangunan.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/Footer%20Section/minat_section.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/Footer%20Section/shear_seaction.dart';
import 'package:kpknl/utilities/smallText.dart';

class DetailProperty extends StatefulWidget {
  const DetailProperty({super.key});

  @override
  State<DetailProperty> createState() => _DetailPropertyState();
}

class _DetailPropertyState extends State<DetailProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(Dimensi.height20 + 5),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensi.width20,
                  right: Dimensi.width20,
                  top: Dimensi.height10 + 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(Icons.arrow_back)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              width: Dimensi.screenWidth,
              height: 320,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/rumah.jpg"),
                      ),
                    ),
                  ),
                  Gap(Dimensi.height10),
                  BigText(text: "Tampak Muka Property"),
                  Gap(Dimensi.height5),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensi.width20,
                        right: Dimensi.width20,
                        bottom: Dimensi.height10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensi.radius10),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/rumah.jpg"))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/rumah.jpg"))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/rumah.jpg"))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/rumah.jpg"))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/rumah.jpg"))),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/rumah.jpg"))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Dimensi.screenWidth,
              margin: EdgeInsets.only(
                  left: Dimensi.width20, right: Dimensi.width20),
              height: 100,
              child: const InfoServer(
                  tanggalServer: "05 Oktober 2022", jamServer: "15:07"),
            ),
            const IsiProperty(
                judul: "INI JUDULLLL",
                biayaProperty: "RP 500.000.000",
                caraPenawaran: "caraPenawaran",
                jaminan: "jaminan",
                batasAkhirJaminan: "batasAkhirJaminan",
                batasAkhirPenawaran: "23/10/2022",
                penyelenggaraan: "penyelenggaraan",
                kodeLelang: "kodeLelang"),
            const Divider(),
            Container(
                width: Dimensi.screenWidth,
                margin: EdgeInsets.only(
                    left: Dimensi.width20, right: Dimensi.width20),
                child: const TipeBangunan(
                    kamarTidur: "kamarTidur",
                    kamarMandi: "kamarMandi",
                    luasTanah: "luasTanah",
                    luasBangunan: "10x10",
                    dayaListrik: "dayaListrik",
                    lantaiRumah: "lantaiRumah")),
            const Divider(),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensi.height10, bottom: Dimensi.height10),
                margin: EdgeInsets.only(
                    left: Dimensi.width20, right: Dimensi.width20),
                width: Dimensi.screenWidth,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(Dimensi.radius15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: const Offset(4, 4))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: Dimensi.conFotoPenyewa,
                      height: Dimensi.conFotoPenyewa,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/megumin.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Gap(Dimensi.width40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BigText(text: "Nama Penyewa"),
                        Gap(Dimensi.height5),
                        Container(
                          width: Dimensi.conPenyewaWidth,
                          height: Dimensi.conPenyewaHeight,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xFF388269),
                              borderRadius:
                                  BorderRadius.circular(Dimensi.radius10)),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensi.width5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(FontAwesomeIcons.whatsapp),
                                Gap(Dimensi.width5),
                                BigText(text: "WhatsApp")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Gap(Dimensi.height5),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensi.width20,
                  right: Dimensi.width20,
                  bottom: Dimensi.height10 + 3,
                  top: Dimensi.height10 + 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MinatSection(),
                  const ShearSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
