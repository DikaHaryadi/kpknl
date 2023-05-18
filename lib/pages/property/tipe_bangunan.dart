import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/dimension.dart';

class TipeBangunan extends StatelessWidget {
  final String kamarTidur;
  final String kamarMandi;
  final String luasTanah;
  final String luasBangunan;
  final String dayaListrik;
  final String lantaiRumah;
  const TipeBangunan({
    super.key,
    required this.kamarTidur,
    required this.kamarMandi,
    required this.luasTanah,
    required this.luasBangunan,
    required this.dayaListrik,
    required this.lantaiRumah,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.only(left: Dimensi.width20, right: Dimensi.width20),
      width: Dimensi.screenWidth,
      height: Dimensi.conTBangunanHeight,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: Dimensi.conTBangunanWidth,
                  height: Dimensi.conTBangunanHeight,
                  padding: EdgeInsets.only(top: Dimensi.height10 - 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensi.radius10),
                    border: Border.all(strokeAlign: StrokeAlign.inside),
                  ),
                  child: Center(
                      child: Column(
                    children: [
                      Gap(Dimensi.height5 + 3),
                      Text("K. Tidur",
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                      Gap(Dimensi.height10),
                      Text(
                        kamarTidur,
                        style: TextStyle(fontSize: Dimensi.font16 - 2),
                      )
                    ],
                  )),
                ),
              ],
            ),
            Gap(Dimensi.width20),
            Column(
              children: [
                Container(
                  width: Dimensi.conTBangunanWidth,
                  height: Dimensi.conTBangunanHeight,
                  padding: EdgeInsets.only(top: Dimensi.height10 - 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensi.radius10),
                      border: Border.all(strokeAlign: StrokeAlign.inside)),
                  child: Column(
                    children: [
                      Gap(Dimensi.height5 + 3),
                      Text("K. Mandi",
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                      Gap(Dimensi.height10),
                      Text(kamarMandi,
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                    ],
                  ),
                ),
              ],
            ),
            Gap(Dimensi.width20),
            Column(
              children: [
                Container(
                  width: Dimensi.conTBangunanWidth,
                  height: Dimensi.conTBangunanHeight,
                  padding: EdgeInsets.only(top: Dimensi.height10 - 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensi.radius10),
                      border: Border.all(strokeAlign: StrokeAlign.inside)),
                  child: Column(
                    children: [
                      Gap(Dimensi.height5 + 3),
                      Text("L. Tanah",
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                      Gap(Dimensi.height10),
                      Text(luasTanah,
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                    ],
                  ),
                ),
              ],
            ),
            Gap(Dimensi.width20),
            Column(
              children: [
                Container(
                  width: Dimensi.conTBangunanWidth,
                  height: Dimensi.conTBangunanHeight,
                  padding: EdgeInsets.only(top: Dimensi.height10 - 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensi.radius10),
                      border: Border.all(strokeAlign: StrokeAlign.inside)),
                  child: Column(
                    children: [
                      Gap(Dimensi.height5 + 3),
                      Text("L. Bangunan",
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                      Gap(Dimensi.height10),
                      Text(luasBangunan,
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                    ],
                  ),
                ),
              ],
            ),
            Gap(Dimensi.width20),
            Column(
              children: [
                Container(
                  width: Dimensi.conTBangunanWidth,
                  height: Dimensi.conTBangunanHeight,
                  padding: EdgeInsets.only(top: Dimensi.height10 - 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensi.radius10),
                      border: Border.all(strokeAlign: StrokeAlign.inside)),
                  child: Column(
                    children: [
                      Gap(Dimensi.height5 + 3),
                      Text("Daya Listrik",
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                      Gap(Dimensi.height10),
                      Text(dayaListrik,
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                    ],
                  ),
                ),
              ],
            ),
            Gap(Dimensi.width20),
            Column(
              children: [
                Container(
                  width: Dimensi.conTBangunanWidth,
                  height: Dimensi.conTBangunanHeight,
                  padding: EdgeInsets.only(top: Dimensi.height10 - 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensi.radius10),
                      border: Border.all(strokeAlign: StrokeAlign.inside)),
                  child: Column(
                    children: [
                      Gap(Dimensi.height5 + 3),
                      Text("L. Rumah",
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                      Gap(Dimensi.height10),
                      Text(lantaiRumah,
                          style: TextStyle(fontSize: Dimensi.font16 - 2)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
