import 'package:flutter/material.dart';
import 'package:kpknl/Controller/data_controller.dart';
import 'package:kpknl/utilities/dimension.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensi.radius10),
          color: category.color),
      child: Center(
          child: Text(
        category.name,
        style: const TextStyle(color: Colors.white),
      )),
    );
  }
}
