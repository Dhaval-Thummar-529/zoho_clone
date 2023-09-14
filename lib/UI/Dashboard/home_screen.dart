import 'package:flutter/material.dart';
import 'package:zoho_clone/CustomWidgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.7803921568627451),
      appBar: const CustomDashBoardAppBar(
        "Home",
        showIcons: true,
        showSearchIcon: true,
        showNotificationIcon: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
