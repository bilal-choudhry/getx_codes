import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_codes/getx/student.dart';

class GetxObxWithCustomClass extends StatelessWidget {
  GetxObxWithCustomClass({Key? key}) : super(key: key);
  var student= Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Obx with Custom Class")
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${student.name.value}", style: TextStyle(color: Colors.black),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  student.name.value=student.name.value.toUpperCase();
                }, child: Text("Upper Case")),
                ElevatedButton(onPressed: (){
                  student.name.value=(student.name.value)[0].toUpperCase() +(student.name.value).substring(1).toLowerCase();
                }, child: Text("Capitalize"))
              ],
            )
          ],
        ),
      ),

    );
  }
}
