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

      body: Container(
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          color: Colors.blue,
          backgroundColor: Colors.white,

          onRefresh: () async {
            await controller.refreshProduk();

            Get.snackbar(
              "Berhasil",
              "Data produk berhasil diperbarui",
              snackPosition: SnackPosition.BOTTOM,
            );
          },

          child: Obx(
            () => ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: controller.listProduk.length,
              itemBuilder: (context, index) {
                final produk = controller.listProduk[index];

                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    controller.listProduk.remove(produk);
                  },
                  child: Card(
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
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 17,
                              ),
                              const SizedBox(width: 4),
                              Text(produk.rating),
                            ],
                          ),
                        ],
                      ),

                      trailing: const Icon(
                        Icons.chevron_right,
                        color: Colors.blue,
                      ),

                      // KLIK PRODUK
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

                      // CONTEXT MENU (TEKAN LAMA)
                      // CONTEXT MENU (TEKAN LAMA)
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(produk.namaProduk),

                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // LIHAT DETAIL
                                  ListTile(
                                    leading: const Icon(
                                      Icons.visibility,
                                      color: Colors.blue,
                                    ),
                                    title: const Text("Lihat Detail"),
                                    onTap: () {
                                      Navigator.pop(context);

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

                                  // EDIT PRODUK
                                  ListTile(
                                    leading: const Icon(
                                      Icons.edit,
                                      color: Colors.orange,
                                    ),
                                    title: const Text("Edit Produk"),
                                    onTap: () {
                                      Navigator.pop(context);

                                      Get.snackbar(
                                        "Edit Produk",
                                        "Fitur edit belum tersedia",
                                      );
                                    },
                                  ),

                                  // HAPUS PRODUK
                                  ListTile(
                                    leading: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    title: const Text("Hapus Produk"),
                                    onTap: () {
                                      Navigator.pop(context);

                                      controller.listProduk.remove(produk);

                                      Get.snackbar(
                                        "Berhasil",
                                        "Produk berhasil dihapus",
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
