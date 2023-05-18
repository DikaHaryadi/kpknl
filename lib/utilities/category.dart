import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:kpknl/utilities/dimension.dart';

class CategoryIcons extends StatelessWidget {
  final IconData? iconData;

  const CategoryIcons({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensi.iconCategory,
      height: Dimensi.iconCategory,
      // margin: EdgeInsets.only(bottom: Dimensi.height20),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(Dimensi.radius10 + 5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: const Offset(0, 5),
                blurRadius: 1,
                spreadRadius: 0.5)
          ]),
      child: Center(
          child: Icon(
        iconData,
        size: Dimensi.iconSize30,
        color: Colors.white,
      )),
    );
  }
}
