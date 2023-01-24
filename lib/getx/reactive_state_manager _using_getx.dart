import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class ReactiveStateManagerUsingGetx extends StatelessWidget {
  ReactiveStateManagerUsingGetx({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller());

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Reactive State Manager Using Getx"),
    ),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX</*call controller class*/Controller>(
              init: Controller(),
            builder: (c){
                return Text("The value is ${c.count}");
            },
          ),
          Obx(() => Text("The value is ${controller.count}")),
          SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Get.find<Controller>().increment();
            }, child: Text("++")),
          SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(controller.count.value >=1) {
                controller.decrement();
              }
            }, child: Text("--")),
            ElevatedButton(onPressed: (){
              //if you dont wanna use Get.put use this command
                Get.find</*call controller class*/Controller>().decrement();

            }, child: Text("--")),
        ],
      ),
    ),
  );
}}
