import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpknl/Controller/data_controller.dart';
import 'package:kpknl/pages/property/app_column.dart';
import 'package:kpknl/responsive/skelton_loading.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:gap/gap.dart';
import 'package:kpknl/utilities/dimension.dart';

class RecomendedContainer extends StatelessWidget {
  final String image, judul, lokasi, penyelenggaraLelang;

  final String price;
  const RecomendedContainer(
      {super.key,
      required this.image,
      required this.judul,
      required this.lokasi,
      required this.price,
      required this.penyelenggaraLelang});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 15, bottom: 10),
        width: MediaQuery.of(context).size.width * 0.4,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: Dimensi.conRekomendasi,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image))),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  height: Dimensi.conTextGridHeight,
                  width: Dimensi.conTextGridWidth,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: AppColumn(
                    judul: judul,
                    size: Dimensi.font16,
                    lokasiRumah: lokasi,
                    hargasewa: price,
                    penyelenggaraLelang: penyelenggaraLelang,
                  )),
            ),
          ],
        ));
  }
}
