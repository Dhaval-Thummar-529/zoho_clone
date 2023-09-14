import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoho_clone/Constants/route_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {
      Get.offNamed(RouteConstants.dashboard);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/zoho_clone_app_logo.png",
                height: 250,
                width: 250,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "ZOHO PEOPLE CLONE",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
