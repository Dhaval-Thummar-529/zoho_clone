import 'package:get/get.dart';
import 'package:zoho_clone/UI/Dashboard/modules_screen.dart';

class ModuleController extends GetxController {
  List<Modules>? modules = [];

  @override
  void onInit() {
    createModuleList();
    super.onInit();
  }

  createModuleList() {
    modules!.clear();
    List<String> icons = [];
    List<String> name = [
      "Leave Tracker",
      "Time Tracker",
      "Attendance",
      "Performance",
      "Files",
      "Organization",
      "Travel",
      "Compensation",
      "Announcements",
      "HR Letters",
      "Office Readiness",
      "Tasks",
      "Cases"
    ];
    for (int i = 0; i < name.length; i++) {
      modules!.add(Modules(icon: "", name: name[i]));
    }
  }
}
