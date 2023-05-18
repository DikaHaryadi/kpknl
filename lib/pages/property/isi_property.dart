import 'package:flutter/material.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/expandable-text.dart';
import 'package:kpknl/utilities/smallText.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class IsiProperty extends StatefulWidget {
  final String judul;
  final String biayaProperty;
  final String caraPenawaran;
  final String jaminan;
  final String batasAkhirJaminan;
  final String batasAkhirPenawaran;
  final String penyelenggaraan;
  final String kodeLelang;
  const IsiProperty(
      {super.key,
      required this.judul,
      required this.biayaProperty,
      required this.caraPenawaran,
      required this.jaminan,
      required this.batasAkhirJaminan,
      required this.batasAkhirPenawaran,
      required this.penyelenggaraan,
      required this.kodeLelang});

  @override
  State<IsiProperty> createState() => _IsiPropertyState();
}

class _IsiPropertyState extends State<IsiProperty> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Dimensi.width10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(Dimensi.height10 + 5),
                BigText(text: widget.judul),
                Gap(Dimensi.height10),
                SmallText(
                  text: "Nilai Limit :",
                  size: Dimensi.font16,
                ),
                BigText(text: widget.biayaProperty),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: Dimensi.width10),
            child: DataTable(columns: const [
              DataColumn(label: Text("Keterangan")),
              DataColumn(label: Text("Deskripsi"))
            ], rows: [
              DataRow(cells: [
                const DataCell(Text("Cara Penawaran")),
                DataCell(Text(widget.caraPenawaran))
              ]),
              DataRow(cells: [
                const DataCell(Text("Jaminan")),
                DataCell(Text(widget.jaminan))
              ]),
              DataRow(cells: [
                const DataCell(Text("Batas Akhir Jaminan")),
                DataCell(Text(widget.batasAkhirJaminan))
              ]),
              DataRow(cells: [
                const DataCell(Text("Batas Akhir Penawaran")),
                DataCell(Text(widget.batasAkhirPenawaran))
              ]),
              DataRow(cells: [
                const DataCell(Text("Penyelenggaraan")),
                DataCell(Text(widget.penyelenggaraan))
              ]),
              DataRow(cells: [
                const DataCell(Text("Kode Lot Lelang")),
                DataCell(Text(widget.kodeLelang))
              ]),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensi.width20,
                right: Dimensi.width20,
                top: Dimensi.height10),
            child: const ExpandableTextWidget(
                text:
                    "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."),
          ),
        ],
      ),
    );
  }
}
