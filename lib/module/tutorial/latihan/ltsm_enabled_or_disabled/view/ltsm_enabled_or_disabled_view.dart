import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_enabled_or_disabled_controller.dart';

class LtsmEnabledOrDisabledView extends StatefulWidget {
  const LtsmEnabledOrDisabledView({Key? key}) : super(key: key);

  Widget build(context, LtsmEnabledOrDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmEnabledOrDisabled"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              ? Buat variabel enabled di dalam State/Controller
              ! bool enabled = false;

              ? Tambahkan widget ini di dalam Column:
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      controller.enabled ? Colors.orange : Colors.grey,
                ),
                onPressed: () {
                  if(controller.enabled==false) return;
                },
              ),

              ? Buat button lainnya, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.enabled = controller.enabled!;
              controller.setState((){});
              */
                
              */
              TextFormField(
                initialValue: "",
                decoration: const InputDecoration(
                    labelText: "Email",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    helperText: "Your email"),
                maxLength: 20,
              ),
              TextFormField(
                initialValue: "",
                decoration: InputDecoration(
                    labelText: "Password",
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: Icon(controller.isEnable
                        ? Icons.visibility_off
                        : Icons.visibility),
                    helperText: "Your password"),
                obscureText: controller.isEnable,
                maxLength: 20,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      controller.isEnable ? Colors.orange : Colors.grey,
                ),
                onPressed: () {
                  if (controller.isEnable == false) return;
                  controller.setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: Icon(controller.isEnable
                    ? Icons.visibility_off
                    : Icons.visibility),
                label: controller.isEnable
                    ? const Text("Password Disable")
                    : const Text("Password Enable"),
                onPressed: () {
                  controller.isEnable = !controller.isEnable;
                  controller.setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmEnabledOrDisabledView> createState() =>
      LtsmEnabledOrDisabledController();
}
