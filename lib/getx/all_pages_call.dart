import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_codes/getx/reactive_state_manager%20_using_getx.dart';
import 'package:getx_codes/getx/unique_id_getx.dart';
import 'package:getx_codes/getx/use_of_obx_obs.dart';

import 'dependency_injection.dart';
import 'get_view_widget.dart';
import 'getx_bottom_sheet.dart';
import 'getx_dialog_box.dart';
import 'getx_obx_using_constructor.dart';
import 'getx_obx_with_custom_class.dart';
import 'getx_services.dart';
import 'getx_snackbar.dart';
import 'internationalization.dart';

class AllPagesCall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.to(GetxBottomSheet());
              }, child: Text("Bottom Sheet")),
              ElevatedButton(onPressed: (){
                Get.to(GetxDialogBox());
              }, child: Text("DialogBox")),
              ElevatedButton(onPressed: (){
                Get.to(GetxObxUsingConstructor());
              }, child: Text("Obx with Constructor Class")),
              ElevatedButton(onPressed: (){
                Get.to(GetxObxWithCustomClass());
              }, child: Text("Obx with Custom Class")),
              ElevatedButton(onPressed: (){
                Get.to(GetxSnackbar());
              }, child: Text("SnackBar")),
              ElevatedButton(onPressed: (){
                Get.to(ReactiveStateManagerUsingGetx());
              }, child: Text("Reactive State Manager Using Getx")),
              ElevatedButton(onPressed: (){
                Get.to(UseOfObxObs());
              }, child: Text("OBX")),
              ElevatedButton(onPressed: (){
                Get.to(UniqueIdGetx());
              }, child: Text("Unique Id")),
              ElevatedButton(onPressed: (){
                Get.to(Internationalization());
              }, child: Text("Internationalization")),
              ElevatedButton(onPressed: (){
                Get.to(DependencyInjection());
              }, child: Text("Dependency Injection")),
              ElevatedButton(onPressed: (){
                Get.to(GetxServices());
              }, child: Text("GetX Sevices")),
              ElevatedButton(onPressed: (){
                Get.to(GetViewWidget());
              }, child: Text("GetView Controller")),
            ],
          ),
        ),
      ),
    );
  }
}
