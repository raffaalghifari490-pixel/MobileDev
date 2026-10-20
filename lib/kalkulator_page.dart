import 'package:application_project/components/custom_textfield.dart';
import 'package:application_project/components/mybutton.dart';
import 'package:application_project/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Column(
        children: [
          MyTextfield(
            myHint: "input angka 1",
            txtController: txtangka1,
            radius: 10,
            obscureText: false,
          ),
          MyTextfield(
            myHint: "input angka 2",
            txtController: txtangka2,
            radius: 10,
            obscureText: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                text: "➕",
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      "Error",
                      "Input tidak boleh kosong",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    controller.kurang(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
              const SizedBox(width: 8),
              MyButton(
                text: "➖",
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      "Error",
                      "Input tidak boleh kosong",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    controller.kurang(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
              const SizedBox(width: 8),
              MyButton(
                text: "❌",
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      "Error",
                      "Input angka tidak boleh kosong",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    controller.kali(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
              const SizedBox(width: 8),
              MyButton(
                text: "÷",
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      "Error",
                      "Input angka tidak boleh kosong",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    controller.bagi(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  }
                },
              ),
            ],
          ),

          Obx(
            () => Text(
              controller.hasilHitung.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class KalkulatorPage extends StatefulWidget {
//   const new({super.key});

//   @override
//   State<KalkulatorPage> createState() => _KalkulatorPageState();
// }

// class _KalkulatorPageState extends State<KalkulatorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Kalkulator")),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(20),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               decoration: InputDecoration(hint: Text("Masukkan Angka 1")),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(20),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               decoration: InputDecoration(hint: Text("Masukkan angka 2")),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStatePropertyAll(Colors.blue),
//                 ),
//                 onPressed: () {},
//                 child: Text("➕"),
//               ),
//               ElevatedButton(
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStatePropertyAll(
//                     const Color.fromARGB(255, 243, 33, 33),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: Text("➖"),
//               ),
//               ElevatedButton(
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStatePropertyAll(
//                     const Color.fromARGB(255, 68, 255, 0),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: Text("❎"),
//               ),
//               ElevatedButton(
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStatePropertyAll(
//                     const Color.fromARGB(255, 226, 33, 243),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: Text("➗"),
//               ),
//             ],
//           ),
//           Text("Hasil"),
//           ElevatedButton(
//             style: ButtonStyle(
//               backgroundColor: WidgetStatePropertyAll(
//                 const Color.fromARGB(255, 255, 0, 0),
//               ),
//             ),
//             onPressed: () {},
//             child: Text(
//               "RESET",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
