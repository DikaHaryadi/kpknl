import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpknl/Services/data_services.dart';

class DataController extends GetxController {
  // RxList<DataModel> list = <DataModel>[].obs;
  var list = [].obs;

  final service = DataServices();

  var _loading = false.obs;

  get loading => _loading.value;

  final _categories = {
    Category("Item one", const Color(0xFFfe7743)): false,
    Category("Item one", const Color(0xFFfe7743)): false,
    Category("Item one", const Color(0xFFfe7743)): false,
  }.obs;

  void toggle(Category item) {
    _categories[item] = !(_categories[item] ?? true);
    print(_categories[item]);
  }

  get selecteCategories => _categories.entries
      .where((element) => element.value)
      .map((e) => e.key)
      .toList();
  get categori => _categories.entries.map((e) => e.key).toList();

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  // function mylist favorite Lelang
  get newListFavLelang {
    return list.where((e) => e["favorite"]).map((e) => e).toList();
  }

  _loadData() async {
    _loading.value = false;
    try {
      var info = service.getUsers();
      list.addAll(await info);
    } catch (e) {
      print("Error");
      print(e);
    } finally {
      _loading.value = true;
    }
  }
}

class Category {
  final String name;
  final Color color;

  Category(this.name, this.color);
}
