import 'package:application_project/controller/menu_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final menucontoller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Drawer')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu Navigasi',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text('home'),
              onTap: () {
                menucontoller.changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: Text('history'),
              onTap: () {
                menucontoller.changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                menucontoller.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: menucontoller.selectedIndex.value,
          children: menucontoller.listpages,
        ),
      ),
    );
  }
}
