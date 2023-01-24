import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetxBottomSheet extends StatelessWidget {
  const GetxBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: ()=>Get.back(),
        )

      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(Container(
              width: Get.width,
              child: Wrap(
                children: [
                  ListTile(
                    onTap: () => {Get.changeTheme(ThemeData.dark())},
                    title: Text("Dark Theme "),
                  ),
                  ListTile(
                    onTap: () => {Get.changeTheme(ThemeData.light())},
                    title: Text("Light Theme"),
                  ),
                ],
              ),
            ));
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
