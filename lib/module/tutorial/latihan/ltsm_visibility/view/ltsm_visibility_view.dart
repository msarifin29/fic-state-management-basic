import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_visibility_controller.dart';

class LtsmVisibilityView extends StatefulWidget {
  const LtsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, LtsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              ? Buat variabel visible di dalam State/Controller
              ! bool visible = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
             ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.visible = controller.visible!;
              controller.setState((){});
              */
                
              */

              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.isVisible = !controller.isVisible;
                  controller.setState(() {});
                },
                child: controller.isVisible
                    ? const Text("visibility = false")
                    : const Text("visibility = true"),
              ),
              if (controller.isVisible)
                Center(
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.flutter_dash,
                      size: 200.0,
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
  State<LtsmVisibilityView> createState() => LtsmVisibilityController();
}
