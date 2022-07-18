import 'package:bytcrm_screen_ui/enum/enum.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  PageController pageController = PageController();

  Rx<Myenum> EmployeList = Rx<Myenum>(Myenum.first);
}
