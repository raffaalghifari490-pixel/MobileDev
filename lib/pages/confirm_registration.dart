import 'package:application_project/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistration extends StatelessWidget {
  const ConfirmRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),

      appBar: AppBar(
        title: const Text(
          "Confirm Registration",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Registration Details",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Please check your information before continuing.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),

              child: Column(
                children: [
                  _infoItem(
                    icon: Icons.person_outline,
                    title: "Nama",
                    value: controller.nama,
                  ),

                  const Divider(height: 25),

                  _infoItem(
                    icon: Icons.location_on_outlined,
                    title: "Alamat",
                    value: controller.alamat,
                  ),

                  const Divider(height: 25),

                  _infoItem(
                    icon: Icons.email_outlined,
                    title: "Email",
                    value: controller.email,
                  ),

                  const Divider(height: 25),

                  _infoItem(
                    icon: Icons.phone_outlined,
                    title: "No. Handphone",
                    value: controller.noHp,
                  ),

                  const Divider(height: 25),

                  _infoItem(
                    icon: Icons.wc_outlined,
                    title: "Jenis Kelamin",
                    value: controller.jeniskelamin,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 52,

              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                child: const Text(
                  "Konfirmasi",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
          width: 42,
          height: 42,

          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),

          child: Icon(icon, color: Colors.green, size: 22),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),

              const SizedBox(height: 4),

              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
