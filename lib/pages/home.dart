import 'package:flutter/material.dart';
import 'package:kpknl/Controller/data_controller.dart';
import 'package:kpknl/pages/navbar.dart';
import 'package:kpknl/pages/notifikasi_page.dart';
import 'package:kpknl/pages/property/app_column.dart';
import 'package:kpknl/pages/property/rekomendasi_container.dart';
import 'package:kpknl/responsive/skelton_loading.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/app_icon.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/category.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kpknl/utilities/icon-app.dart';
import 'package:kpknl/utilities/smallText.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final List<String> imgList = [
    'assets/images/carousel1.jpg',
    'assets/images/carousel2.png',
    'assets/images/carousel3.png',
    'assets/images/carousel4.png',
  ];

  // loading boolean
  late bool _isLoading;

  // final List<String> carouselList = [
  //   'https://i.pinimg.com/originals/27/c3/69/27c3694e57b844fb97214546b5dbe067.jpg',
  //   'https://i.pinimg.com/originals/27/5f/9f/275f9fffe96640097849a059517a103f.jpg',
  //   'https://i.pinimg.com/originals/8b/ed/de/8bedde6f7a29c4f00d9d6dc7dff092f5.jpg',
  //   'https://i.pinimg.com/originals/05/17/91/051791b80610c57ec565c01b2d466fd4.jpg',
  // ];

  // _MyDropStateFilter() {
  //   _selectFilter = _dropDownListFilter[0];
  // }

  // final _dropDownListFilter = ["Rumah", "Apartement", "Vila"];
  // String? _selectFilter = "Rumah";

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final DataController _controller = Get.put(DataController());
    return Scaffold(
        drawer: const Navbar(),
        backgroundColor: AppColor.backGroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
          title: SizedBox(
              width: Dimensi.conLogoAppBarw,
              height: Dimensi.conLogoAppBarh,
              child: Image.asset("assets/images/kpknl_logo.png")),
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
              onPressed: () {
                Get.to(() => const NotifikasiPage());
              },
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(Dimensi.height20),
              CarouselSlider(
                  options: CarouselOptions(
                    height: Dimensi.carouselKpknl,
                    autoPlay: true,
                    aspectRatio: 2.0,
                    viewportFraction: 0.7,
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            margin: EdgeInsets.only(
                                left: Dimensi.width10, right: Dimensi.width10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(Dimensi.radius10)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(item,
                                        fit: BoxFit.cover, width: 1000.0),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20.0),
                                      ),
                                    ),
                                  ],
                                )),
                          ))
                      .toList()),
              Gap(Dimensi.height10 + 5),
              BigText(text: "Menu Kategori Sewa"),
              Gap(Dimensi.height20 - 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        Get.toNamed(RouteHelper.getApartementSewa());
                      },
                      child: const CategoryIcons(iconData: Icons.home)),
                  InkWell(
                      onTap: () {
                        Get.toNamed(RouteHelper.getRumahSewa());
                      },
                      child: const CategoryIcons(
                          iconData:
                              FluentSystemIcons.ic_fluent_building_filled)),
                  InkWell(
                      onTap: () {
                        Get.toNamed(RouteHelper.getVilaSewa());
                      },
                      child: const CategoryIcons(iconData: Ionicons.home)),
                ],
              ),
              Gap(Dimensi.height10 + 5),
              Container(
                margin: EdgeInsets.only(
                    left: Dimensi.width10, right: Dimensi.width10),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Dimensi.width20, right: Dimensi.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Rekomendasi"),
                      Expanded(child: Container())
                    ],
                  ),
                ),
              ),
              Gap(Dimensi.height20),
              Obx(() {
                if (_controller.loading == false) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SkeltonPage(
                        width: Dimensi.skelton150,
                        height: Dimensi.skelton150,
                      ),
                      SkeltonPage(
                        width: Dimensi.skelton150,
                        height: Dimensi.skelton150,
                      ),
                    ],
                  );
                } else {
                  return SizedBox(
                    height: Dimensi.conRekomendasi,
                    child: ListView.builder(
                      itemCount: _controller.list.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, int index) {
                        return RecomendedContainer(
                            image: _controller.list[index]["img"],
                            judul: _controller.list[index]["judul"],
                            lokasi: _controller.list[index]["lokasirumah"],
                            price: _controller.list[index]["hargasewa"],
                            penyelenggaraLelang: _controller.list[index]
                                ["penyelenggaraanlelang"]);
                      },
                    ),
                  );
                }
              }),
              Gap(Dimensi.height20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(left: Dimensi.width20 + 5),
                    child: BigText(
                      text: "Baru Saja Ditambahkan",
                    )),
                Expanded(child: Container())
              ]),
              Gap(Dimensi.height20),
              Obx(
                () {
                  if (_controller.loading == false) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: Dimensi.width20, right: Dimensi.width20),
                          child: SkeltonPage(
                            height: Dimensi.skelton15,
                            width: Dimensi.skelton150,
                          ),
                        );
                      },
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
                      itemBuilder: (_, index) => Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteHelper.getDetailProperty());
                            },
                            child: Container(
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
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getDetailProperty());
                              },
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
                          ),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              GestureDetector(
                                onTap: () {
                                  _controller.list[index]["favorite"] =
                                      !_controller.list[index]["favorite"];
                                  print(_controller.list[index]["favorite"]);
                                  _controller.list.refresh();
                                  print(_controller.newListFavLelang.length);
                                },
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: Dimensi.width30 + 5,
                                        top: Dimensi.height10 + 5),
                                    child: AppIcon(
                                      icon: Icons.favorite,
                                      size: Dimensi.iconSize30 + 8,
                                      backgroundColor: _controller.list[index]
                                                  ["favorite"] ==
                                              false
                                          ? AppColor.selectBackground
                                          : AppColor.green,
                                      iconColor: _controller.list[index]
                                                  ["favorite"] ==
                                              false
                                          ? AppColor.selectColor
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
              Gap(Dimensi.height10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.arrow_left),
                      SmallText(
                        text: "Previous",
                        color: Colors.blue,
                        size: Dimensi.font16,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SmallText(
                        text: "Next",
                        color: Colors.blue,
                        size: Dimensi.font16,
                      ),
                      const Icon(Icons.arrow_right)
                    ],
                  ),
                ],
              ),
              Gap(Dimensi.height10)
            ],
          ),
        ));
  }
}
