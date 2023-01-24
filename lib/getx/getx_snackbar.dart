import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetxSnackbar extends StatelessWidget {
  const GetxSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: (){
            Get.snackbar("SnackBar", "Hello It's SnackBar");
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
