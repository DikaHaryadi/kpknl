import 'package:flutter/cupertino.dart';

class FAQ {
  String judul = '';
  IconData? iconmenu;
  List<FAQ> subMenu = [];

  FAQ({required this.judul, required this.subMenu, required this.iconmenu});

  FAQ.fromJson(Map<String, dynamic> json) {
    judul = json['judul'];
    iconmenu = json['iconmenu'];
    if (json['subMenu'] != null) {
      subMenu.clear();
      json['subMenu'].forEach((v) {
        subMenu.add(FAQ.fromJson(v));
      });
    }
  }
}
