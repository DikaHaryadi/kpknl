import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpknl/Controller/categoryWidget.dart';
import 'package:kpknl/Controller/data_controller.dart';

class CategoryFilter extends StatelessWidget {
  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Obx(
      () => ListView.builder(
          itemCount: controller.categori.length,
          itemBuilder: (_, index) {
            return CheckboxListTile(
              value: controller.selecteCategories
                  .contains(controller.categori[index]),
              onChanged: (bool? selected) {
                controller.toggle(controller.categori[index]);
              },
              title: CategoryWidget(category: controller.categori[index]),
            );
          }),
    ));
  }
}
