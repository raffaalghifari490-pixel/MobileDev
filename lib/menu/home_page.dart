import 'package:application_project/controller/list_produk_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121826),
      appBar: AppBar(title: Text("Home Page")),
      body: Container(
        height: 200,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.listProduk.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduk[index];

              return Container(
                width: 150,
                margin: EdgeInsets.all(8),
                child: Card(
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        produk.image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      ),

                      Text(
                        produk.namaProduk,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),

                      Text(
                        "Rp ${produk.harga}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
