import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'inter_controller.dart';

class Internationalization extends StatelessWidget {
  Internationalization({Key? key}) : super(key: key);
  InterController controller = Get.put(InterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Internationalization"),
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
            Text("hello".tr),
            SizedBox(height: 10.sp,),
            ElevatedButton(onPressed: (){
              controller.changeLanguage('urdu', 'Pakistan');
            }, child: Text('Urdu')),
            ElevatedButton(onPressed: (){
              controller.changeLanguage('arabic', 'SaudiArabia');
            }, child: Text('Arabic')),
            ElevatedButton(onPressed: (){
              controller.changeLanguage('en', 'America');
            }, child: Text('English')),

          ],
        ),
      ),
    );
  }
}
