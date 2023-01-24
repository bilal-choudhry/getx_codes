import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'new_controller.dart';

class GetViewWidget extends GetView<NewController>{
  @override
  Widget build(BuildContext context) {
    Get.put(NewController());
    return Scaffold(
      appBar: AppBar(title: Text("GetView Controller"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: ()=>Get.back(),
        ),),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Obx(() => Text("${controller.count}")),
            ElevatedButton(onPressed: (){
              print("${controller.hashCode}");
              controller.increment();
            }, child: Text("Increment")),
            ElevatedButton(onPressed: (){
              print("${controller.hashCode}");
              controller.decrement();
            }, child: Text("Decrement"))

          ],
        ),
      ),
    );
  }
  
}
