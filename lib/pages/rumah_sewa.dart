import 'package:flutter/material.dart';
import 'package:kpknl/Controller/data_controller.dart';
import 'package:kpknl/pages/navbar.dart';
import 'package:kpknl/pages/property/app_column.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:get/get.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';

class RumahSewa extends StatelessWidget {
  const RumahSewa({super.key});

  @override
  Widget build(BuildContext context) {
    final DataController _controller = Get.put(DataController());
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        drawer: const Navbar(),
        // appBar: AppBar(
        //   iconTheme: const IconThemeData(color: Colors.black),
        //   title: BigText(text: "Apartement"),
        //   centerTitle: true,
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   actions: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.search,
        //         color: Colors.black,
        //       ),
        //     ),
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.notifications,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(Dimensi.height10),
              Obx(
                () {
                  if (_controller.loading == false) {
                    return SizedBox(
                      width: Dimensi.circularContainer,
                      child: const CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    );
                  } else {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                      itemCount: _controller.list.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) => GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteHelper.getDetailProperty());
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: Dimensi.screenWidth,
                              height: Dimensi.conGridHeight,
                              margin: EdgeInsets.only(
                                  left: Dimensi.width20,
                                  right: Dimensi.width20),
                              decoration: const BoxDecoration(
                                color: Colors.white54,
                              ),
                            ),
                            Container(
                              width: Dimensi.screenWidth,
                              height: Dimensi.conGridHeight,
                              margin: EdgeInsets.only(
                                  left: Dimensi.width20,
                                  right: Dimensi.width20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          _controller.list[index]["img"]))),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                  height: Dimensi.conTextGridHeight,
                                  width: Dimensi.conTextGridWidth,
                                  margin: EdgeInsets.only(
                                      left: Dimensi.width10 + 4,
                                      right: Dimensi.width10 + 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                  child: AppColumn(
                                    judul: _controller.list[index]["judul"],
                                    size: Dimensi.font16 - 2,
                                    lokasiRumah: _controller.list[index]
                                        ["lokasirumah"],
                                    hargasewa: _controller.list[index]
                                        ["hargasewa"],
                                    penyelenggaraLelang: _controller.list[index]
                                        ["penyelenggaraanlelang"],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
              Gap(Dimensi.height20),
            ],
          ),
        ));
  }
}
