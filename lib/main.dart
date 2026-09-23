import 'package:application_project/kalkulator_page.dart';
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
      home: KalkulatorPage(),
    );
  }
}
