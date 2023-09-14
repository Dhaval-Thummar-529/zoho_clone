import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoho_clone/Controllers/DashboardControllers/modules_controller.dart';
import 'package:zoho_clone/CustomWidgets/custom_app_bar.dart';

class ModulesScreen extends StatelessWidget {
  ModulesScreen({super.key});

  final ModuleController controller = Get.put(ModuleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 219, 219, 1.0),
      appBar: const CustomDashBoardAppBar(
        "Home",
        showIcons: true,
        showSearchIcon: true,
        showNotificationIcon: true,
      ),
      body: Scrollbar(
        thickness: 10,
        radius: const Radius.circular(20.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GetBuilder<ModuleController>(
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      cursorColor: Colors.indigo,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                        hintText: "Search Services...",
                        hintStyle:
                        const TextStyle(fontSize: 16, color: Colors.grey),
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                      ),
                      onChanged: (value) {
                        controller.createModuleList();
                        if (value.length >= 3) {
                          controller.modules = controller.modules!.where((element) => element.name!.toLowerCase().contains(value)).toList();
                        } else{
                          controller.modules!.clear();
                          controller.createModuleList();
                        }
                        controller.update();
                      },
                    ),
                    const SizedBox(height: 25,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: List.generate(controller.modules!.length, (
                            index) {
                          return ModuleListView(index: index);
                        }),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ModuleListView extends StatelessWidget {
  final int index;

  const ModuleListView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ModuleController>(
      builder: (controller) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          child: SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.5,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /*const ImageIcon(
                    AssetImage(""),
                    size: 32,
                  ),*/
                  const SizedBox(height: 18),
                  Text(
                    controller.modules![index].name!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Modules {
  String? icon;
  String? name;

  Modules({this.icon, this.name});
}
