import 'package:flutter/material.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  FontWeight? fontWeight;
  final String text;
  double size;
  double height;
  TextOverflow? textOverflow;
  int? maxlines;
  SmallText(
      {super.key,
      required this.text,
      this.color = const Color(0xFF000000),
      this.size = 12,
      this.textOverflow,
      this.maxlines,
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      overflow: textOverflow,
      style: GoogleFonts.roboto(
          color: color,
          fontSize: size == 12 ? Dimensi.font12 : size,
          height: height,
          fontWeight: fontWeight),
    );
  }
}
