import 'package:application_project/controller/list_produk_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProdukDetailPage extends StatelessWidget {
  ProdukDetailPage({super.key});

  final controller = Get.put(ListProdukDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),

      appBar: AppBar(
        title: const Text("Detail Produk"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // GAMBAR
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Image.network(
                      controller.image,
                      height: 220,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // NAMA
                Text(
                  controller.namaProduk,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                // HARGA
                Text(
                  controller.harga,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Text("Toko : ${controller.namaToko}"),
                Text("Rating : ⭐ ${controller.rating}"),

                const SizedBox(height: 15),

                const Text(
                  "Deskripsi",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 5),

                Text(controller.deskripsi),

                const SizedBox(height: 15),

                const Text(
                  "Review",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 5),

                Text(controller.riview),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
