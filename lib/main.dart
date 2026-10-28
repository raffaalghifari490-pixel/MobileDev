import 'package:application_project/routes.dart';
import 'package:get/get.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter PPLG 3",
      initialRoute: Routes.maindrawer,
      getPages: Routes.pages,
    );
  }
}
