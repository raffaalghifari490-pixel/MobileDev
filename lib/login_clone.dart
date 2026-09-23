import 'package:flutter/material.dart';

class LoginClone extends StatelessWidget {
  const LoginClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.all(25),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul
            const Text(
              "Log in to TikTok",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Deskripsi
            const Text(
              "Manage your account and enjoy TikTok",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),

            const SizedBox(height: 30),

            // Username
            TextField(
              decoration: InputDecoration(
                hintText: "Username or Email",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.redAccent, fontSize: 13),
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Login
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // OR
            const Text(
              "OR Continue with",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // Social Media
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialButton(Icons.g_mobiledata),
                const SizedBox(width: 15),
                _socialButton(Icons.apple),
                const SizedBox(width: 15),
                _socialButton(Icons.facebook),
              ],
            ),

            const SizedBox(height: 30),

            // Sign Up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget tombol sosial
  static Widget _socialButton(IconData icon) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white,
      child: Icon(icon, color: Colors.black),
    );
  }
}
