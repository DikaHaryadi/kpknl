import 'package:flutter/material.dart';
import 'package:kpknl/Services/services_profile/faq_model.dart';
import 'package:kpknl/Services/services_profile/menu_help.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:ionicons/ionicons.dart';
import 'package:get/get.dart';
import 'package:kpknl/utilities/category.dart';
import 'package:kpknl/utilities/dimension.dart';

class HelpSection extends StatefulWidget {
  const HelpSection({super.key});

  @override
  State<HelpSection> createState() => _HelpSectionState();
}

class _HelpSectionState extends State<HelpSection> {
  List<FAQ> data = [];

  @override
  void initState() {
    for (var element in dataList) {
      data.add(FAQ.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        title: BigText(
          text: "FAQ",
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _buildList(data[index]);
        },
      ),
    );
  }
}

Widget _buildList(FAQ list) {
  if (list.subMenu.isEmpty) {
    return Builder(builder: (context) {
      return ListTile(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => SubCategory(list.judul))),
          title: Text(list.judul));
    });
  }
  return ExpansionTile(
    leading: Icon(list.iconmenu),
    title: Text(
      list.judul,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    children: list.subMenu.map(_buildList).toList(),
  );
}

class SubCategory extends StatelessWidget {
  String name;
  SubCategory(this.name, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
          title: BigText(
            text: name,
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Center(
          child: Text("This is $name category screen"),
        ));
  }
}
