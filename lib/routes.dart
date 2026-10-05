import 'package:application_project/pages/confirm_registration.dart';
import 'package:application_project/pages/registration_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmregistration = "/confirmregistration";
  // dll login, controller

  // kita tampung ke dalam array yang akan kita pasang ke main dart
  static final pages =  [
    GetPage(name: registration,page: ()=> RegistrationPage()),
    GetPage(name: confirmregistration, page: ()=> ConfirmRegistration()),
    // others page here dll
  ];
}