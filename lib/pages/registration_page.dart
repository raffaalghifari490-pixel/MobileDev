import 'package:application_project/components/custom_textfield.dart';
import 'package:application_project/components/textfieldnum.dart';
import 'package:application_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtnoHp = TextEditingController();
    TextEditingController txtJeniskelamin = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "Silahkan isi data berikut",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),

            const SizedBox(height: 20),

            MyTextfield(
              myHint: "Input nama",
              txtController: txtNama,
              radius: 10,
              obscureText: false,
            ),

            const SizedBox(height: 10),

            MyTextfield(
              myHint: "Alamat",
              txtController: txtAlamat,
              radius: 10,
              obscureText: false,
            ),

            const SizedBox(height: 10),

            MyTextfield(
              myHint: "Email",
              txtController: txtEmail,
              radius: 10,
              obscureText: false,
            ),

            const SizedBox(height: 10),

            Textfield(
              myHint: "No. Handphone",
              txtController: txtnoHp,
              radius: 10,
            ),

            const SizedBox(height: 10),

            MyTextfield(
              myHint: "Jenis Kelamin",
              txtController: txtJeniskelamin,
              radius: 10,
              obscureText: false,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.confirmregistration,
                    arguments: {
                      'name': txtNama.text,
                      'alamat': txtAlamat.text,
                      'email': txtEmail.text,
                      'no': txtnoHp.text,
                      'jenis_kelamin': txtJeniskelamin.text,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Send",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
