import 'package:application_project/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProdukModelController extends GetxController {
  RxList<ProductModel> listProduk = <ProductModel>[].obs;

  var isLoading = false.obs;

  // Method mengambil data dari API
  Future<void> getProduk() async {
    try {
      isLoading.value = true;

      final url = Uri.parse("https://fakestoreapi.com/products");

      final response = await http.get(url);

      if (response.statusCode == 200) {
        listProduk.value = productModelFromJson(response.body);
      } else {
        Get.snackbar(
          "Gagal",
          "Gagal mengambil data produk",
        );
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
      print("Error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProduk();
  }

  // Refresh data
  Future<void> refreshProduk() async {  
    await getProduk();
  }
}
