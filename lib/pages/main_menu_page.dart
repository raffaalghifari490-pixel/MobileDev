import 'package:application_project/controller/main_menu_controller.dart';
import 'package:application_project/menu/history_page.dart';
import 'package:application_project/menu/home_page.dart';
import 'package:application_project/menu/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menucontroller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: menucontroller.selectedIndex.value,
          children: menucontroller.listpages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: menucontroller.selectedIndex.value,
          onTap: menucontroller.changePage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Profile"),
          ],
        ),
      ),
    );
  }
}
