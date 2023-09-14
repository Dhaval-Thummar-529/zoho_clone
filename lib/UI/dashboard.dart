import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoho_clone/Constants/constant_colors.dart';
import 'package:zoho_clone/Controllers/dashboard_controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final DashBoardController controller = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<DashBoardController>(
          builder: (controller) {
            return controller.bottomNavPage[controller.pageIndex];
          },
        ),
        bottomNavigationBar: GetBuilder<DashBoardController>(
          builder: (controller) {
            return BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.pageIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (i) {
                controller.pageIndex = i;
                if (i == 2) {
                  controller.addIconBool = !controller.addIconBool;
                } else {
                  controller.addIconBool = false;
                }
                controller.update();
              },
              items: [
                BottomNavigationBarItem(
                    icon: controller.pageIndex == 0
                        ? const Icon(
                            Icons.grid_view_sharp,
                            color: primaryColor1,
                          )
                        : const Icon(Icons.grid_view, color: Colors.black),
                    label: ""),
                BottomNavigationBarItem(
                    icon: controller.pageIndex == 1
                        ? const Icon(
                            Icons.home,
                            color: primaryColor1,
                          )
                        : const Icon(Icons.home_outlined, color: Colors.black),
                    label: ""),
                BottomNavigationBarItem(
                    icon: controller.pageIndex == 2 && controller.addIconBool
                        ? const Icon(
                            Icons.cancel_rounded,
                            color: primaryColor1,
                          )
                        : const Icon(Icons.add_circle_rounded,
                            color: primaryColor1),
                    label: ""),
                BottomNavigationBarItem(
                    icon: controller.pageIndex == 3
                        ? const Icon(
                            Icons.check_circle_rounded,
                            color: primaryColor1,
                          )
                        : const Icon(Icons.check_circle_outline_rounded,
                            color: Colors.black),
                    label: ""),
                BottomNavigationBarItem(
                    icon: controller.pageIndex == 4
                        ? const Icon(
                            Icons.list,
                            color: primaryColor1,
                          )
                        : const Icon(Icons.list, color: Colors.black),
                    label: ""),
              ],
            );
          },
        ),
      ),
    );
  }
}
