import 'package:get/get.dart';

class Dimensi {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Screen Height nya Menggunakan Iphone 12 Pro Max yaitu 844
  static double width5 = screenWidth / 168.8;
  static double width10 = screenWidth / 84.4;
  static double width20 = screenWidth / 42.2;
  static double width30 = screenWidth / 28.13;
  static double width40 = screenWidth / 21.1;
  static double width340 = screenWidth / 4.13;
  static double width400 = screenWidth / 2.42;

  // Dimension Height
  static double height5 = screenHeight / 168.8;
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;

  // Dimension Text
  static double font12 = screenHeight / 70.3;
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font30 = screenHeight / 28.13;
  // static double font12 = Get.context!.width >= 1170 ? 18 : 12;
  // static double font16 = Get.context!.width >= 1170 ? 22 : 16;
  // static double font20 = Get.context!.width >= 1170 ? 26 : 20;
  // static double font30 = Get.context!.width >= 1170 ? 36 : 30;

  // Dimension Radius
  static double radius10 = screenHeight / 84.4;
  static double radius15 = screenHeight / 56.26;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  // Dimension untuk carousel
  static double carouselKpknl = screenHeight / 5.62;
  static double carouselRekomendasi = screenHeight / 5.62;

  // Dimension untuk icon
  static double iconsize16 = screenHeight / 52.75;
  static double iconsize25 = screenHeight / 33.76;
  static double iconSize30 = screenHeight / 28.13;

  // Dimension untuk judul appbar
  static double conLogoAppBarh = screenHeight / 3.22;
  static double conLogoAppBarw = screenHeight / 8.88;

  // Dimension untuk container rekomendasi
  static double conRekomendasi = screenHeight / 3.8;
  static double conNotifikasi = screenHeight / 1.6;
  // Dimension untuk kategori sewa
  static double conKategoriHeight = screenHeight / 28.13;
  static double conKategoriWidht = screenWidth / 2.8;

  // Dimension untuk CircularProgressIndicator
  static double circularContainer = screenHeight / 14.06;

  // Dimension untuk grid
  static double conGridHeight = screenHeight / 2.37;
  static double conTextGridHeight = screenHeight / 8.30;
  static double conTextGridWidth = screenHeight / 3.3;

  // Dimension untuk tipe_bangunan
  static double conTBangunanWidth = screenWidth / 3.5;
  static double conTBangunanHeight = screenHeight / 10.78;

  // Dimension untuk footer
  static double conPenyewaWidth = screenHeight / 4.63;
  static double conPenyewaHeight = screenHeight / 24.11;
  static double conFotoPenyewa = screenHeight / 14.88;
  static double conIndicatorHeight = screenHeight / 23.76;
  static double conIndicatorWidth = screenWidth / 23.76;

  // Dimension untuk profile section
  static double iconCategory = screenHeight / 14.07;
  static double conTopProfile = screenHeight / 9.85;
  static double conTop2Profile = screenHeight / 10.55;

  // Splash Screen Dimensions
  static double splashImg = screenHeight / 3.38;
  // Skelton Dimensions
  static double skelton300 = screenHeight / 2.81;
  static double skelton250 = screenHeight / 3.38;
  static double skelton150 = screenHeight / 5.63;
  static double skelton100 = screenHeight / 8.44;
  static double skelton30 = screenHeight / 28.1;
  static double skelton20 = screenHeight / 42.2;
  static double skelton15 = screenHeight / 56.3;
}
