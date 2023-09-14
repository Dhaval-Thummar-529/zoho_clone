import 'package:flutter/material.dart';
import 'package:zoho_clone/CustomWidgets/custom_app_bar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.6901960784313725),
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
