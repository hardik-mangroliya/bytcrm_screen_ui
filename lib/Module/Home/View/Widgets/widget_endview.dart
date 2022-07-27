import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Enum/enum.dart';
import '../../Controller/controller.dart';

class Endview extends StatefulWidget {
  const Endview({Key? key}) : super(key: key);

  State<Endview> createState() => _EndviewState();
}

class _EndviewState extends State<Endview> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(
            () => GestureDetector(
              onTap: () {
                switch (homeScreenController.EmployeList.value) {
                  case Myenum.first:
                    Get.back();
                    break;
                  case Myenum.second:
                    homeScreenController.pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                    homeScreenController.EmployeList.value = Myenum.first;
                    break;
                  case Myenum.third:
                    homeScreenController.pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                    homeScreenController.EmployeList.value = Myenum.second;
                    break;
                }
              },
              child: Container(
                width: 90,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    homeScreenController.EmployeList.value == Myenum.second
                        ? "BACK"
                        : "CANCEL",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 9,
          ),
          Obx(
            () => GestureDetector(
              onTap: () {
                switch (homeScreenController.EmployeList.value) {
                  case Myenum.first:
                    homeScreenController.pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                    homeScreenController.EmployeList.value = Myenum.second;
                    break;
                  case Myenum.second:
                    homeScreenController.pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                    homeScreenController.EmployeList.value = Myenum.third;
                    break;
                  case Myenum.third:
                    Get.back();
                    break;
                }
              },
              child: Container(
                width: 95,
                height: 45,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF1aadf4), Color(0xFF0778b1)]),
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Text(
                        homeScreenController.EmployeList.value == Myenum.third
                            ? "SAVE"
                            : "NEXT",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 13,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// +++++++++++++++++++++++++++++++++++++++++++++++++++++++
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../Enum/enum.dart';
// import '../../Controller/controller.dart';

// class Endview extends StatefulWidget {
//   const Endview({Key? key}) : super(key: key);

//   State<Endview> createState() => _EndviewState();
// }

// class _EndviewState extends State<Endview> {
//   HomeScreenController homeScreenController = Get.put(HomeScreenController());

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10, bottom: 15, right: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Obx(
//             () {
//               final screen =
//                   homeScreenController.personalDetailScreenStatus.value;

//               return GestureDetector(
//                 onTap: () {
//                   switch (screen) {
//                     case AddEmployeEnum.done:
//                       Get.back();
//                       break;
//                     case AddEmployeEnum.inProgress:
//                       homeScreenController.pageController.animateToPage(0,
//                           duration: const Duration(milliseconds: 200),
//                           curve: Curves.easeIn);
//                       homeScreenController.personalDetailScreenStatus.value =
//                           AddEmployeEnum.done;
//                       break;
//                     case AddEmployeEnum.inActive:
//                       homeScreenController.pageController.animateToPage(1,
//                           duration: const Duration(milliseconds: 200),
//                           curve: Curves.easeIn);
//                       homeScreenController.personalDetailScreenStatus.value =
//                           AddEmployeEnum.inProgress;
//                   }
//                 },
//                 child: Container(
//                   width: 90,
//                   height: 45,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(5),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       homeScreenController.personalDetailScreenStatus.value ==
//                               AddEmployeEnum.inProgress
//                           ? "Back"
//                           : "CANCEL",
//                       style: const TextStyle(
//                           color: Colors.grey,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(
//             width: 9,
//           ),
//           Obx(
//             () {
//               final screen =
//                   homeScreenController.personalDetailScreenStatus.value;
//               return GestureDetector(
//                 onTap: () {
//                   switch (screen) {
//                     case AddEmployeEnum.done:
//                       homeScreenController.pageController.animateToPage(1,
//                           duration: const Duration(milliseconds: 200),
//                           curve: Curves.easeInOut);
//                       homeScreenController.personalDetailScreenStatus.value =
//                           AddEmployeEnum.inProgress;
//                       break;
//                     case AddEmployeEnum.inProgress:
//                       homeScreenController.pageController.animateToPage(2,
//                           duration: const Duration(milliseconds: 200),
//                           curve: Curves.easeInOut);
//                       homeScreenController.joiningDetailScreenStatus.value =
//                           AddEmployeEnum.inActive;
//                       break;
//                     case AddEmployeEnum.inActive:
//                       Get.back();
//                       break;
//                   }
//                 },
//                 child: Container(
//                   width: 95,
//                   height: 45,
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                         colors: [Color(0xFF1aadf4), Color(0xFF0778b1)]),
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(5),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 18),
//                     child: Row(
//                       children: [
//                         Text(
//                           homeScreenController
//                                       .personalDetailScreenStatus.value ==
//                                   AddEmployeEnum.inActive
//                               ? "Save"
//                               : "NEXT",
//                           style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(width: 5),
//                         const Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.white,
//                           size: 13,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
// }
