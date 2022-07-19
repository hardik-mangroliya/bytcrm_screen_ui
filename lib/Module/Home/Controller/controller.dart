import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../Enum/enum.dart';

class HomeScreenController extends GetxController {
  PageController pageController = PageController();

  Rx<Myenum> EmployeList = Rx<Myenum>(Myenum.first);
}
