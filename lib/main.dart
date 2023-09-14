import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zoho_clone/Constants/constant_colors.dart';
import 'package:zoho_clone/Constants/get_pages.dart';
import 'package:zoho_clone/UI/splash_screen.dart';

import 'Utils/color_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(220, 219, 219, 1.0),
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoho Clone',
      theme: ThemeData(
        primarySwatch: createMaterialColor(primaryColor1),
      ),
      getPages: pages,
      home: const SplashScreen(),
    );
  }
}
