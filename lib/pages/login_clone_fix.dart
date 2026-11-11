import 'package:application_project/controller/login_clone_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(LoginCloneController());

    return Scaffold(
      backgroundColor: const Color(0xFF080808),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45),

              // Judul
              const Text(
                "TikTok",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  Container(
                    width: 25,
                    height: 4,
                    color: Colors.redAccent,
                  ),
                  Container(
                    width: 25,
                    height: 4,
                    color: Colors.cyanAccent,
                  ),
                ],
              ),

              const SizedBox(height: 45),

              // Sign In
              const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Welcome back! Please login to your account.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 30),

              // Username
              TextField(
                controller: controller.txtUsername,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: const Color(0xFF1C1C1C),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // Password
              TextField(
                controller: controller.txtPassword,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: const Color(0xFF1C1C1C),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Tombol Login
              Obx(() {
                return SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: 
                        () {
                            controller.login();
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                );
              }),

              const SizedBox(height: 20),

              const Text(
                "Please enter your account information.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
