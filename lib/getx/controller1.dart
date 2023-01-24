import 'package:get/get.dart';

class ControllerOne  extends GetxController{
  var count=0;
  increment(){
    count++;
    update(["Counter"]);
  }
  decrement(){
    count--;
    update(["Counter"]);
  }

}