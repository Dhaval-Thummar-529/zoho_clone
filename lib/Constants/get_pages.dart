
import 'package:get/get.dart';
import 'package:zoho_clone/Constants/route_constants.dart';
import 'package:zoho_clone/UI/dashboard.dart';
import 'package:zoho_clone/UI/Dashboard/home_screen.dart';
import 'package:zoho_clone/UI/Dashboard/modules_screen.dart';
import 'package:zoho_clone/UI/Dashboard/approvals_screen.dart';
import 'package:zoho_clone/UI/Dashboard/more_screen.dart';

import '../UI/splash_screen.dart';

List<GetPage> pages = [
  //splashScreen
  GetPage(name: RouteConstants.splashScreen, page: () => const SplashScreen()),

  //Dashboard
  GetPage(name: RouteConstants.dashboard, page: () => Dashboard()),
  GetPage(name: RouteConstants.modules, page: () => ModulesScreen()),
  GetPage(name: RouteConstants.homeScreen, page: () => const HomeScreen()),
  GetPage(name: RouteConstants.approvalsScreen, page: () => const ApprovalsScreen()),
  GetPage(name: RouteConstants.moreScreen, page: () => const MoreScreen()),
];