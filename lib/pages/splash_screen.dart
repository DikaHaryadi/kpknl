import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kpknl/utilities/category.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kpknl/utilities/dimension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //with TickerProviderStateMixin {
  // late Animation<double> animation;
  // late AnimationController controller;

  @override
  void initState() {
    super.initState();
    //   controller =
    //       AnimationController(vsync: this, duration: const Duration(seconds: 5))
    //         ..forward();

    //   animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(const Duration(seconds: 3),
        () => Get.offNamed(RouteHelper.getInitial()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/images/kpknl_logo.png",
                width: Dimensi.splashImg,
              ),
            ),
          ),
          Text(
            "Aplikasi ini support dengan :",
            textAlign: TextAlign.center,
            style: Styles.headLineStyle1.copyWith(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Ionicons.logo_android),
              Gap(Dimensi.width30),
              const Icon(Ionicons.logo_apple),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(
                top: Dimensi.height30, bottom: Dimensi.height30),
            child: const CircularProgressIndicator(),
          ),
          Text(
            "KPKNL Kalimantan v1.0.0",
            style: Styles.headLineStyle2
                .copyWith(color: Colors.black.withOpacity(0.5)),
          ),
          Gap(Dimensi.height10 + 5)
          // ScaleTransition(
          //   scale: animation,
          //   child: Center(
          //     child: Image.asset(
          //       "assets/images/kpknl_logo.png",
          //       width: Dimensi.splashImg,
          //     ),
          //   ),
          // ),
          // ScaleTransition(
          //   scale: animation,
          //   child: Center(
          //     child: Image.asset(
          //       "assets/images/slogan.png",
          //       width: Dimensi.splashImg,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
