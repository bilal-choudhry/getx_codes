import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injections.dart';

class DependencyInjection extends StatelessWidget {
  // DependencyInjection({Key? key}) : super(key: key);
  /*DependencyInjection controller = Get.put(
      DependencyInjection(), tag: "Code red", permanent: true);*/

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => DependencyInjection(), tag: "Code red", fenix: true);
    // Get.create(() => DependencyInjection());
    Get.putAsync<Injection>(()async => await Injection());
    return Scaffold(
      appBar: AppBar(title: Text("Dependency Injection"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: ()=>Get.back(),
        ),),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              // Get.find<DependencyInjection>(tag: "Code red");
            // Get.find<DependencyInjection>();
              Get.find<Injection>().incrementCounter();
            }, child: Text("Click"))
          ],
        ),
      ),
    );
  }

}
