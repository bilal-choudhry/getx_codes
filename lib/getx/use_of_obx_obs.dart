import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UseOfObxObs extends StatelessWidget {
  UseOfObxObs({Key? key}) : super(key: key);
  var num = 0.obs;
  var _color=MaterialStateProperty.all<Color>(Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OBX"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("$num")),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: _color,
              ),
                onPressed: () => num++,
                child: Text("Click")
            )
          ],
        ),
      ),
    );
  }
}
