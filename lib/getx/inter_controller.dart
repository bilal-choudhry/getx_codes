import 'dart:ui';

import 'package:get/get.dart';

class InterController extends GetxController{
  void changeLanguage(var language, var country){
    var locale = Locale(language, country);
    Get.updateLocale(locale);
  }

}