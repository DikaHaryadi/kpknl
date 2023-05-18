import 'package:flutter/material.dart';
import 'package:kpknl/utilities/apk_styles.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/smallText.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class ShearSection extends StatelessWidget {
  const ShearSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showShearButton(context);
      },
      child: Row(
        children: [
          Icon(
            Icons.share_rounded,
            size: Dimensi.iconSize30,
          ),
          Gap(Dimensi.width5),
          SmallText(
            text: "Bagikan",
            size: Dimensi.font16,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  void showShearButton(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensi.radius15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: Dimensi.radius20,
                            backgroundImage:
                                const AssetImage("assets/images/wa.ico"),
                          ),
                          SmallText(text: "WhatsApp")
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: Dimensi.radius20,
                            backgroundImage:
                                const AssetImage("assets/images/f.ico"),
                          ),
                          SmallText(text: "Facebook"),
                        ],
                      ),
                    ],
                  ),
                  Gap(Dimensi.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: Dimensi.radius20,
                            backgroundImage:
                                const AssetImage("assets/images/instagram.ico"),
                          ),
                          SmallText(text: "Instagram"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: Dimensi.radius20,
                            backgroundImage:
                                const AssetImage("assets/images/telegram.ico"),
                          ),
                          SmallText(text: "Telegram"),
                        ],
                      ),
                    ],
                  ),
                  Gap(Dimensi.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_note_filled),
                      Container(
                        width: 200,
                        height: 20,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: Center(
                          child: Text(
                            "Ini Text Yang Buat Disalin",
                            style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.w800,
                                fontSize: Dimensi.font12),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
}
