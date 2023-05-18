import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kpknl/Services/auth_controller.dart';
import 'package:kpknl/firebase_options.dart';
import 'package:kpknl/pages/detail_property.dart';
import 'package:kpknl/pages/payment.dart';
import 'package:kpknl/pages/home.dart';
import 'package:kpknl/pages/navbar.dart';
import 'package:kpknl/pages/notifikasi_page.dart';
import 'package:kpknl/pages/profile.dart';
import 'package:kpknl/pages/property/expandable_container.dart';
import 'package:kpknl/pages/property/profile_body.dart';
import 'package:kpknl/pages/searchPage.dart';
import 'package:kpknl/pages/splash_screen.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kpknl/pengaturan%20akun/pengaturan_akun.dart';
import 'package:kpknl/routes/routes.dart';
import 'package:kpknl/utilities/app-colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:kpknl/utilities/bigText.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = [
    const Beranda(),
    const PaymentPage(),
    const NotifikasiPage(),
    const ProfileSection()
  ];

  void onItemTaped(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
            NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPage = index;
                });
              },
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                    label: Text("Home")),
                NavigationRailDestination(
                    icon: Icon(Ionicons.wallet_outline),
                    label: Text("Payment")),
                NavigationRailDestination(
                    icon: Icon(Icons.notifications_outlined),
                    label: Text("Notifikasi")),
                NavigationRailDestination(
                    icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                    label: Text("Profile")),
              ],
              selectedIndex: currentPage,
            ),
          Expanded(child: pages[currentPage])
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              currentIndex: currentPage,
              onTap: onItemTaped,
              elevation: 10,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.blueGrey,
              unselectedItemColor: const Color(0xFF526480),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                    activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Ionicons.wallet_outline),
                    activeIcon: Icon(Ionicons.wallet),
                    label: 'Payment'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_outlined),
                    activeIcon: Icon(Icons.notifications),
                    label: 'Notifikasi'),
                BottomNavigationBarItem(
                    icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                    activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                    label: 'Profile'),
              ],
            )
          : null,
    );
  }
}
