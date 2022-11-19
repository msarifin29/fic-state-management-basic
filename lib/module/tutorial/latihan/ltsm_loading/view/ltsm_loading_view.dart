import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              ? Buat variabel loading di dalam State/Controller
              ! bool loading = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                CircularProgressIndicator();

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.loading = controller.loading!;
              controller.setState((){});
              */
                
              */
              if (controller.isLoading)
                const Center(child: CircularProgressIndicator()),
              const SizedBox(
                height: 25.0,
              ),
              if (controller.isLoading == false)
                SizedBox(
                  height: 350.0,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: Icon(
                        Icons.flutter_dash,
                        size: 45.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.isLoading = !controller.isLoading;
                  controller.setState(() {});
                },
                child: controller.isLoading
                    ? const Text("isLoading true")
                    : const Text("isLoading false"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
