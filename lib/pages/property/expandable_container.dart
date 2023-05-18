import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/smallText.dart';

class ExpandableContainer extends StatefulWidget {
  final String text;

  const ExpandableContainer({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableContainer> createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  late String firstHalf;
  late String secondHalf;

  final String deksriptif = "Deskriptif";

  bool hiddenText = true;

  double textHeight = Dimensi.screenHeight / 5.04;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: deksriptif,
                  size: Dimensi.font16 - 2,
                ),
                Gap(Dimensi.height5),
                SmallText(
                    height: 1.3,
                    color: AppColor.paraColor,
                    size: Dimensi.font12,
                    text: hiddenText
                        ? ("$firstHalf...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    SmallText(
                      text: "Lihat Selengkapnya",
                      color: Colors.blue,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: Colors.blue,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
