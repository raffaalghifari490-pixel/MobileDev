import 'package:application_project/controller/list_produk_controller.dart';
import 'package:application_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),

      appBar: AppBar(
        title: const Text("My Products"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.listProduk.length,
        itemBuilder: (context, index) {
          final produk = controller.listProduk[index];

          return Card(
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),

              // GAMBAR
              leading: Image.network(
                produk.image,
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),

              // NAMA + HARGA
              title: Text(
                produk.namaProduk,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),

                  Text(
                    produk.harga,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 17),
                      const SizedBox(width: 4),
                      Text(produk.rating),
                    ],
                  ),
                ],
              ),

              trailing: const Icon(Icons.chevron_right, color: Colors.blue),

              onTap: () {
                Get.toNamed(
                  Routes.detailproduk,
                  arguments: {
                    'nama': produk.namaProduk,
                    'gambar': produk.image,
                    'nama_toko': produk.namaToko,
                    'harga': produk.harga,
                    'deskripsi': produk.deskripsi,
                    'rating': produk.rating,
                    'riview': produk.riview,
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
