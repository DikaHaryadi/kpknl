import 'package:flutter/material.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {super.key,
      required this.text,
      this.color = AppColor.bigTextColor,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        overflow: overflow,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: color,
            fontSize: size == 0 ? Dimensi.font20 : size));
  }
}
