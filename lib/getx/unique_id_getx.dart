import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';
import 'controller1.dart';

class UniqueIdGetx extends StatelessWidget {
  UniqueIdGetx({Key? key}) : super(key: key);
   ControllerOne _controller = Get.put(ControllerOne());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Unique ID"),
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
            GetBuilder<ControllerOne>(
                id:"Counter",
                builder: (controller){
                  return Text("${controller.count}");
                }),
            GetBuilder<ControllerOne>(
                builder: (controller){
                  return Text("${controller.count}");
                }),
            ElevatedButton(onPressed: (){
              _controller.increment();
            }, child: Text("Increment"))

          ],
        ),
      ),
    );
  }
}
