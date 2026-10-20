import 'package:application_project/pages/main_menu_page.dart';
import 'package:application_project/pages/produk_detail_page.dart';
import 'package:application_project/pages/confirm_registration.dart';
import 'package:application_project/pages/list_produk_page.dart';
import 'package:application_project/pages/registration_page.dart';
import 'package:get/get_navigation/get_navigation.dart';


class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmregistration = "/confirmregistration";
  static const String listProduk = "/listProduk";
  static const String detailproduk ="/detailProduk";
  static const String mainmenu ="/mainmenu";
  
  // dll login, controller

  // kita tampung ke dalam array yang akan kita pasang ke main dart
  static final pages =  [
    GetPage(name: registration,page: ()=> RegistrationPage()),
    GetPage(name: confirmregistration, page: ()=> ConfirmRegistration()),
    GetPage(name: listProduk, page: ()=>ListProdukPage()),
    GetPage(name: detailproduk, page: ()=> ProdukDetailPage()),
    GetPage(name: mainmenu, page: ()=>MainMenuPage())
    // others page here dll
  ];
}