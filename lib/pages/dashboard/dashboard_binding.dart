// ignore_for_file: use_function_type_syntax_for_parameters

import 'package:get/get.dart';
import 'package:getx_navigation_app/pages/add/add_controller.dart';

import 'package:getx_navigation_app/pages/dashboard/dashboard_controller.dart';
import 'package:getx_navigation_app/pages/home/home_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AddController>(() => AddController());
  }
}
