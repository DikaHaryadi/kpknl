import 'package:flutter/material.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/app_icon.dart';
import 'package:kpknl/utilities/bigText.dart';
import 'package:kpknl/utilities/dimension.dart';
import 'package:kpknl/utilities/smallText.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("User.com"),
            accountEmail: Text("khususbot66@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/megumin.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://radiologyed.org/wp-content/uploads/2014/09/background.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.house),
            title: const Text("Lelang Page"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Ionicons.log_in),
            title: const Text("Login"),
            onTap: () {
              Get.toNamed(RouteHelper.getloginSection());
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add_alt),
            title: const Text("Registrasi"),
            onTap: () {
              Get.toNamed(RouteHelper.getregistrasiSection());
            },
          ),
          ListTile(
            leading: const Icon(Ionicons.help_circle),
            title: const Text("Bantuan"),
            onTap: () {
              Get.toNamed(RouteHelper.gethelpSection());
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(FontAwesomeIcons.powerOff),
            title: const Text("Exit"),
            onTap: () {
              Get.toNamed(RouteHelper.getInitial());
            },
          ),
        ],
      ),
    );
  }
}
