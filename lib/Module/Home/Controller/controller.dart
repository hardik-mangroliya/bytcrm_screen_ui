import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../Enum/enum.dart';

class HomeScreenController extends GetxController {
  PageController pageController = PageController();

  // AddEmployeEnum personalDetailScreenStatus = AddEmployeEnum.inProgress;

  Rx<Myenum> EmployeList = Rx<Myenum>(Myenum.first);

  // Rx<AddEmployeEnum> personalDetailScreenStatus =
  //     Rx<AddEmployeEnum>(AddEmployeEnum.inActive);
  // Rx<AddEmployeEnum> joiningDetailScreenStatus =
  //     Rx<AddEmployeEnum>(AddEmployeEnum.inActive);
  // Rx<AddEmployeEnum> employePermissionScreenStatus =
  //     Rx<AddEmployeEnum>(AddEmployeEnum.inActive);
}


// class Emp{
//  Emp(this.name,this.salary);
//   String name; 
//   double salary;

  
// }