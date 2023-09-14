import 'package:get/get.dart';
import 'package:zoho_clone/UI/Dashboard/approvals_screen.dart';
import 'package:zoho_clone/UI/Dashboard/home_screen.dart';
import 'package:zoho_clone/UI/Dashboard/modules_screen.dart';
import 'package:zoho_clone/UI/Dashboard/more_screen.dart';

class DashBoardController extends GetxController {

  var pageIndex = 1;

  var addIconBool = false;

  var bottomNavPage = [
    ModulesScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const ApprovalsScreen(),
    const MoreScreen(),
  ];

}