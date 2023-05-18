import 'package:flutter/material.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/dimension.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData iconData;
  const AppTextField(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensi.width20, right: Dimensi.width20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensi.radius30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: const Offset(0, 5),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          // hintText
          hintText: hintText,
          // prefixIcon
          prefixIcon: Icon(iconData, color: AppColor.yellowColor),
          // focusedBorder
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensi.radius30),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          // enableBorder
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensi.radius30),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          // border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensi.radius30),
          ),
        ),
      ),
    );
  }
}
