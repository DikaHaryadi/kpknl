import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpknl/Controller/categoryWidget.dart';
import 'package:kpknl/Controller/data_controller.dart';
import 'package:kpknl/pages/property/expandable_container.dart';
import 'package:kpknl/utilities/dimension.dart';

class SelectedCategories extends StatelessWidget {
  final DataController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Obx(
        () => ListView.builder(
            itemCount: controller.selecteCategories.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: Dimensi.width30,
                    right: Dimensi.width30,
                    top: Dimensi.height10),
                child: (CategoryWidget(
                  category: controller.selecteCategories[index],
                )),
              );
            }),
      ),
    );
  }
}
