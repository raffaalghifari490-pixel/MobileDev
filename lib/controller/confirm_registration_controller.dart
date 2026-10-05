import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String noHp;
  late String jeniskelamin;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments; // menangkap data dari tampilan sebelumnya
    nama = arguments['name'];
    alamat = arguments['alamat'];
    email =arguments['email'];
    noHp = arguments['no'];
    jeniskelamin = arguments['jenis_kelamin'];
  }
}
