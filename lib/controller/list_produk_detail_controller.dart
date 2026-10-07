import 'package:get/get.dart';

class ListProdukDetailController extends GetxController{
  late String namaProduk;
  late String image;
  late String namaToko;
  late String harga;
  late String deskripsi;
  late String rating;
  late String riview;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['nama'];
    image = arguments['gambar'];
    namaToko =arguments['nama_toko'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    rating = arguments['rating'];
    riview = arguments['riview'];
  }
}