import 'package:flutter/cupertino.dart';
import 'package:kpknl/utilities/dimension.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color paraColor = const Color(0xFF8f837f);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFF3b3b3b);
  static TextStyle textStyle = TextStyle(
      fontSize: Dimensi.font12, color: textColor, fontWeight: FontWeight.w300);
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: Dimensi.font20, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: Dimensi.font16, color: textColor, fontWeight: FontWeight.bold);
}
