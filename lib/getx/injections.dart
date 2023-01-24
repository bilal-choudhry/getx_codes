import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Injection extends GetxController {
  void incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter')??0)+1;
    print("Counter = $counter");
    await prefs.setInt('counter', counter);
  }
}
