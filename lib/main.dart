import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'getx/all_pages_call.dart';
import 'getx/messages.dart';
import 'getx/services.dart';
import 'getx/shapes.dart';

Future <void> main() async{
  SharedPreferences.setMockInitialValues({});
  await initServices();
  runApp( MyApp());
}
Future <void> initServices() async{
  print("Starting Services...");
  await Get.putAsync<Services>(() async=> Services());
  print("All Services Started");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) =>
          GetMaterialApp(
            translations: Messages(),
            locale: Locale('en', 'America'),
            fallbackLocale: Locale('en', 'America'),
            debugShowCheckedModeBanner: false,
            title: 'Internationalization',
            home: AllPagesCall(),
          ),
    );
  }
}
