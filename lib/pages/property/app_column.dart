import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/smallText.dart';

// ignore: must_be_immutable
class AppColumn extends StatelessWidget {
  final String judul;
  final double size;
  final String lokasiRumah;
  final String hargasewa;
  final String penyelenggaraLelang;
  const AppColumn(
      {Key? key,
      required this.judul,
      required this.size,
      required this.lokasiRumah,
      required this.hargasewa,
      required this.penyelenggaraLelang})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: BigText(
          text: judul,
          size: size,
          color: Colors.white,
        )),
        Gap(Dimensi.height10 - 3),
        Padding(
            padding: EdgeInsets.only(left: Dimensi.width10 + 5),
            child: SmallText(
              text: "Rp.$hargasewa",
              size: Dimensi.font16 - 2,
              color: Colors.white,
              maxlines: 1,
              textOverflow: TextOverflow.ellipsis,
            )),
        Padding(
          padding: EdgeInsets.only(left: Dimensi.width10 + 5),
          child: SmallText(
            text: lokasiRumah,
            color: Colors.white,
            size: Dimensi.font16 - 2,
            maxlines: 1,
            textOverflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: Dimensi.width10 + 5),
          child: SmallText(
            text: penyelenggaraLelang,
            size: Dimensi.font16 - 2,
            color: Colors.white,
            maxlines: 1,
            textOverflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
