import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kpknl/Services/registrasi.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/app_lelang_rumah.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kpknl/utilities/smallText.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Gap(Dimensi.height30),
          // app logo is here
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/kpknl_logo.png"))),
          ),
          Gap(Dimensi.height10),
          // welcome section
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: Dimensi.width20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: Dimensi.font20 * 2 + Dimensi.font20 / 2,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Masuk dengan akun mu",
                  style: TextStyle(
                      fontSize: Dimensi.font20, color: Colors.grey[500]),
                )
              ],
            ),
          ),
          Gap(Dimensi.height20),
          // your email
          AppTextField(
              textController: emailController,
              hintText: "Email",
              iconData: Icons.email),
          Gap(Dimensi.height10),
          // your password
          AppTextField(
              textController: passwordController,
              hintText: "Password",
              iconData: Icons.password_sharp),

          Gap(Dimensi.height30 * 2),
          // Sign Up
          Container(
            width: Dimensi.screenWidth / 2,
            height: Dimensi.screenHeight / 13,
            decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.circular(Dimensi.radius10)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  // recognizer: TapGestureRecognizer()..onTap=(){Get.toNamed()},
                  text: "Login",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: Dimensi.font20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Gap(Dimensi.screenHeight * 0.05),
          RichText(
            text: TextSpan(
                text: "Belum punya akun?",
                style: TextStyle(
                    color: Colors.grey[500], fontSize: Dimensi.font20),
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const RegistrasiSection()),
                      text: " Buat akun",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: Dimensi.font20)),
                ]),
          ),
        ]),
      ),
    );
  }
}
