import 'package:flutter/material.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/dimension.dart';

class InfoPenyewa extends StatelessWidget {
  final String namaPenyewa;
  final String noWa;
  final String namaInstansi;
  const InfoPenyewa(
      {super.key,
      required this.namaPenyewa,
      required this.noWa,
      required this.namaInstansi});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensi.width20, right: Dimensi.width20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(Dimensi.height10),
          BigText(text: "Informasi Tentang Penyewa"),
          Gap(Dimensi.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Nama Penyewa :"),
              Gap(Dimensi.width10),
              Text(namaPenyewa)
            ],
          ),
          Gap(Dimensi.width5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Nomer Yang Dapat Dihubungi :"),
              Gap(Dimensi.width10),
              Text(noWa)
            ],
          ),
          Gap(Dimensi.width5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Nama Instansi :"),
              Gap(Dimensi.width10),
              Text(namaInstansi)
            ],
          ),
        ],
      ),
    );
  }
}
