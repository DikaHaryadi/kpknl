import 'package:flutter/material.dart';
import 'package:kpknl/utilities/dimension.dart';

class SkeltonPage extends StatelessWidget {
  double? height;
  double? width;
  SkeltonPage({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.all(Radius.circular(Dimensi.radius15))),
    );
  }
}
