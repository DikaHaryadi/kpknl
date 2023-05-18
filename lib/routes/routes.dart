import 'package:get/get.dart';
import 'package:kpknl/Services/login.dart';
import 'package:kpknl/Services/registrasi.dart';
import 'package:kpknl/Services/services_profile/help.dart';
import 'package:kpknl/pages/apartement_sewa.dart';
import 'package:kpknl/pages/detail_property.dart';
import 'package:kpknl/pages/home.dart';
import 'package:kpknl/main.dart';
import 'package:kpknl/pages/profile.dart';
import 'package:kpknl/pages/rumah_sewa.dart';
import 'package:kpknl/pages/splash_screen.dart';
import 'package:kpknl/pages/vila_sewa.dart';
import 'package:kpknl/pengaturan%20akun/pengaturan_akun.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const String detailProperty = "/detail-property";
  static const String apartementSewa = "/apartement-sewa";
  static const String rumahSewa = "/rumah-sewa";
  static const String vilaSewa = "/vila-sewa";
  static const String loginSection = "/login-section";
  static const String registrasiSection = "/registrasi-section";
  static const String profileSection = "/profile-section";
  static const String helpSection = "/help-section";
  static const String pengaturanAkunSection = "/Pengaturan-Akun";

  static String getSplashPage() => splashPage;
  static String getInitial() => initial;
  static String getDetailProperty() => detailProperty;
  static String getApartementSewa() => apartementSewa;
  static String getRumahSewa() => rumahSewa;
  static String getVilaSewa() => vilaSewa;
  static String getloginSection() => loginSection;
  static String getregistrasiSection() => registrasiSection;
  static String getprofileSection() => profileSection;
  static String gethelpSection() => helpSection;
  static String getPengaturanAkunSection() => pengaturanAkunSection;

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(
        name: initial,
        page: (() => const RootPage()),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: detailProperty,
        page: (() => const DetailProperty()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: apartementSewa,
        page: (() => const ApartementSewa()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: rumahSewa,
        page: (() => const RumahSewa()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: vilaSewa,
        page: (() => const VilaSewa()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: loginSection,
        page: (() => const LoginSection()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: registrasiSection,
        page: (() => const RegistrasiSection()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: profileSection,
        page: (() => const ProfileSection()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: helpSection,
        page: (() => const HelpSection()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: pengaturanAkunSection,
        page: (() => const PengaturanAkun()),
        // ini transisi page ke page Detail Property detail
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
