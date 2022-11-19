import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmEditProfileView extends StatefulWidget {
  const LtfmEditProfileView({Key? key}) : super(key: key);

  Widget build(context, LtfmEditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmEditProfile"),
        actions: [
          //! 4. Tambahkan tombol Save
          //! 5. Beri padding/margin pada tombol Save sebanyak 10
          //! 6. Panggil controller.save() ketika tombol di klik
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                controller.save();
              },
              child: const Text("Save"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buat sebuah Card, tambahkan Column di dalamnya
              //! 2. Tambahkan padding.all 20.0
              //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
              //? textfield email
              //? textfield password
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        label: "Email",
                        onChanged: (value) {},
                      ),
                      QTextField(
                        label: "Password",
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmEditProfileView> createState() => LtfmEditProfileController();
}
