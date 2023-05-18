import 'package:flutter/material.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/smallText.dart';
import 'package:gap/gap.dart';

class IconTextApp extends StatelessWidget {
  Color backgroundColor;
  final String judul;
  final String deskripsi;
  final String subDeskripsi;
  final String keterangan;

  IconTextApp(
      {super.key,
      this.backgroundColor = Colors.grey,
      required this.judul,
      required this.deskripsi,
      required this.subDeskripsi,
      required this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BigText(
        text: judul,
        size: Dimensi.font16 - 2,
      ),
      Gap(Dimensi.height10 - 5),
      BigText(
        text: deskripsi,
        size: Dimensi.font16,
      ),
      SmallText(text: subDeskripsi),
      Gap(Dimensi.height20 - 5),
      SmallText(text: keterangan)
    ]);
  }
}
