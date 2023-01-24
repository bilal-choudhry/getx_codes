import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class GetxDialogBox extends StatelessWidget {
  const GetxDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_sharp),
            onPressed: ()=>Get.back(),
          ),
        title: Text("Dialog Box"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: (){
            Get.defaultDialog(
              title: "Dialog Title",
              middleText: "middle area",
                radius: 80.sp,
              textCancel: "No",
              textConfirm: "Yes",
              buttonColor: Colors.red,
              onCancel: (){},
              onConfirm: (){},
            );
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
