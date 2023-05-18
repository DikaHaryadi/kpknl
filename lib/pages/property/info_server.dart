import 'package:flutter/material.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:kpknl/utilities/dimension.dart';

class InfoServer extends StatelessWidget {
  final String tanggalServer;
  final String jamServer;
  const InfoServer(
      {super.key, required this.tanggalServer, required this.jamServer});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: Dimensi.width20, right: Dimensi.width20),
      decoration:
          BoxDecoration(border: Border.all(strokeAlign: StrokeAlign.inside)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(text: "Estimasi Waktu Server"),
              const InkWell(
                  child: Icon(FluentSystemIcons.ic_fluent_history_filled))
            ],
          ),
          Gap(Dimensi.height10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensi.radius10),
                border: Border.all(strokeAlign: StrokeAlign.inside)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.timer),
                    BigText(text: tanggalServer),
                    Gap(Dimensi.width10),
                    BigText(text: jamServer)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.refresh),
                    Gap(Dimensi.width10),
                    BigText(text: "Muat Ulang")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
