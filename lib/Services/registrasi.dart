import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kpknl/Services/auth_controller.dart';
import 'package:kpknl/Services/login.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/app_lelang_rumah.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kpknl/utilities/smallText.dart';

class RegistrasiSection extends StatelessWidget {
  const RegistrasiSection({super.key});

  @override
  Widget build(BuildContext context) {
    var loginWith = ['f.ico', 'google.ico', 'instagram.ico'];
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    // var nameController = TextEditingController();
    // var phoneController = TextEditingController();
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
          Container(
            margin: EdgeInsets.only(left: Dimensi.width30),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Registrasi",
                  style: TextStyle(
                      fontSize: Dimensi.font20 * 2 + Dimensi.font20 / 5,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Buat akun baru",
                  style: TextStyle(
                      fontSize: Dimensi.font20, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Gap(Dimensi.height10),
          // your email
          AppTextField(
              textController: emailController,
              hintText: "Email",
              iconData: Icons.email),
          Gap(Dimensi.height20),
          // your password
          AppTextField(
              textController: passwordController,
              hintText: "Password",
              iconData: Icons.password_sharp),
          Gap(Dimensi.height20),
          // your name
          // AppTextField(
          //     textController: nameController,
          //     hintText: "Name",
          //     iconData: Icons.person),
          // Gap(Dimensi.height20),
          // // your phone
          // AppTextField(
          //     textController: phoneController,
          //     hintText: "Phone",
          //     iconData: Icons.phone),
          // Gap(Dimensi.height10),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.back(),
                    text: "Masuk dengan akun",
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensi.font20)),
              ),
              Gap(Dimensi.width20)
            ],
          ),
          Gap(Dimensi.height30 * 1.8),
          // Sign Up
          GestureDetector(
            onTap: () {
              // AuthController.instance.register(
              //     emailController.text.trim(), passwordController.text.trim());
              print("Daftar Akun");
            },
            child: Container(
              width: Dimensi.screenWidth / 1.5,
              height: Dimensi.screenHeight / 13,
              decoration: BoxDecoration(
                  color: AppColor.mainColor,
                  borderRadius: BorderRadius.circular(Dimensi.radius10)),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    // recognizer: TapGestureRecognizer()..onTap=(){Get.toNamed()},
                    text: "Daftar",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: Dimensi.font20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Gap(Dimensi.height30),
          RichText(
            text: TextSpan(
                text: "Sign up using one of the following methods",
                style: TextStyle(
                    color: Colors.grey[500], fontSize: Dimensi.font16)),
          ),
          Wrap(
            children: List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: Dimensi.radius20,
                        backgroundImage:
                            AssetImage("assets/images/${loginWith[index]}"),
                      ),
                    )),
          )
        ]),
      ),
    );
  }
}
