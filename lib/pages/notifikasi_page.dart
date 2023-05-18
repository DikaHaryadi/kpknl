import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/smallText.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            "Notifikasi",
            style: Styles.headLineStyle1.copyWith(fontSize: Dimensi.font20),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: AppColor.backGroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Dimensi.conNotifikasi,
                margin: EdgeInsets.only(
                    top: Dimensi.height10, bottom: Dimensi.height10),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: Dimensi.screenWidth,
                        margin: EdgeInsets.only(
                            top: Dimensi.height10, bottom: Dimensi.height10),
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(Icons.abc),
                          title: BigText(text: "Promo Cuy"),
                          subtitle: SmallText(
                              text: "Kami sudap siapkan promonya tauu"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensi.width30,
                    top: Dimensi.height10,
                    bottom: Dimensi.height10),
                child: Row(
                  children: [
                    Text(
                      "Status Pesanan",
                      style: Styles.headLineStyle1.copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                width: Dimensi.screenWidth,
                height: Dimensi.carouselKpknl,
                margin: EdgeInsets.only(bottom: Dimensi.height10),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(text: "Kaga ada pesanannya paokk"),
                    Gap(Dimensi.height20),
                    Image.asset(
                      "assets/images/kpknl_logo.png",
                      width: Dimensi.conLogoAppBarw,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
