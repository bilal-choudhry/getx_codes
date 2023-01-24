import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_codes/getx/student_constructor.dart';

class GetxObxUsingConstructor extends StatelessWidget {
  GetxObxUsingConstructor({Key? key}) : super(key: key);
  var student = StudentConstructor("Bilal", 24).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Obx with Constructor Class"),
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
            Obx(() =>
                Text(
                  "${student.value.newName}",
                  style: TextStyle(color: Colors.black),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      student.update((student) {
                        student!.newName =
                            student.newName.toString().toUpperCase();
                      });
                    },
                    child: Text("Upper Case")),
                ElevatedButton(
                    onPressed: () {
                      student.update((student) {
                        student!.newName = student.newName.toString()[0]
                            .toUpperCase() + (student.newName).substring(1)
                            .toLowerCase();
                        ;
                      });
                    },
                    child: Text("Capitalize"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
