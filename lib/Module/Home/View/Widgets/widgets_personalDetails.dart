// import 'package:bytcrm_screen_ui/Enum/enum.dart';
// import 'package:bytcrm_screen_ui/Module/Home/Controller/controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class PersonalDetails extends StatefulWidget {
//   PersonalDetails(
//       {Key? key,
//       required this.value,
//       required this.text,
//       required this.isFirst,
//       required this.isLast,
//       required this.stepperStatus})
//       : super(key: key);

//   final String value;
//   final String text;
//   final bool isFirst;
//   final bool isLast;
//   final AddEmployeEnum stepperStatus;

//   State<PersonalDetails> createState() => _PersonalDetails();
// }

// class _PersonalDetails extends State<PersonalDetails> {
//   HomeScreenController homeScreenController = Get.put(HomeScreenController());

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         children: [
//           Obx(
//             () => Row(
//               children: [
//                 //DIVIDER WIDGET
//                 Expanded(
//                   child: Divider(
//                     color:
//                         homeScreenController.personalDetailScreenStatus.value ==
//                                     AddEmployeEnum.done ||
//                                 homeScreenController
//                                         .employePermissionScreenStatus.value ==
//                                     AddEmployeEnum.inProgress
//                             ? Colors.white
//                             : Colors.blue,
//                     thickness: 3,
//                   ),
//                 ),
//                 //CIRCLE AVATAR WIDGET
//                 Container(
//                   height: 100,
//                   width:
//                       homeScreenController.personalDetailScreenStatus.value ==
//                               AddEmployeEnum.done
//                           ? 45
//                           : 50,
//                   decoration: homeScreenController
//                                   .personalDetailScreenStatus.value ==
//                               AddEmployeEnum.inActive ||
//                           homeScreenController
//                                   .personalDetailScreenStatus.value ==
//                               AddEmployeEnum.inProgress ||
//                           homeScreenController
//                                   .personalDetailScreenStatus.value ==
//                               AddEmployeEnum.done
//                       // homeScreenController.personalDetailScreenStatus.value ==
//                       //             AddEmployeEnum.inProgress ||
//                       //         homeScreenController
//                       //                 .personalDetailScreenStatus.value ==
//                       //             AddEmployeEnum.inActive ||
//                       //         homeScreenController
//                       //                 .personalDetailScreenStatus.value ==
//                       //             AddEmployeEnum.done
//                       ? BoxDecoration(
//                           border: Border.all(
//                             width: 2,
//                             color: homeScreenController
//                                             .personalDetailScreenStatus.value ==
//                                         AddEmployeEnum.done ||
//                                     homeScreenController
//                                             .personalDetailScreenStatus.value ==
//                                         AddEmployeEnum.inActive
//                                 ? Colors.blue
//                                 : Colors.green,
//                           ),
//                           shape: BoxShape.circle,
//                         )
//                       : const BoxDecoration(),
//                   child: Container(
//                     height: 50,
//                     width:
//                         homeScreenController.personalDetailScreenStatus.value ==
//                                     AddEmployeEnum.done ||
//                                 homeScreenController
//                                         .personalDetailScreenStatus.value ==
//                                     AddEmployeEnum.inProgress
//                             ? 70
//                             : 32,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: homeScreenController
//                                         .personalDetailScreenStatus.value ==
//                                     AddEmployeEnum.done ||
//                                 homeScreenController
//                                         .joiningDetailScreenStatus.value ==
//                                     AddEmployeEnum.inProgress ||
//                                 homeScreenController
//                                         .joiningDetailScreenStatus.value ==
//                                     AddEmployeEnum.done ||
//                                 homeScreenController
//                                         .employePermissionScreenStatus.value ==
//                                     AddEmployeEnum.inActive
//                             ? Colors.blue
//                             : Colors.green),
//                     margin:
//                         homeScreenController.personalDetailScreenStatus.value ==
//                                 AddEmployeEnum.done
//                             ? const EdgeInsets.all(3)
//                             : const EdgeInsets.all(5),
//                     child: Center(
//                         child: homeScreenController
//                                         .personalDetailScreenStatus.value ==
//                                     AddEmployeEnum.done ||
//                                 homeScreenController
//                                         .joiningDetailScreenStatus.value ==
//                                     AddEmployeEnum.inProgress ||
//                                 homeScreenController
//                                         .employePermissionScreenStatus.value ==
//                                     AddEmployeEnum.inActive
//                             ? const Icon(
//                                 Icons.done_outlined,
//                                 size: 20,
//                                 color: Colors.white,
//                               )
//                             : Text(
//                                 widget.text,
//                                 style: const TextStyle(
//                                     color: Colors.white, fontSize: 20),
//                               )),
//                   ),
//                 ),
//                 //DIVIDER WIDGET
//                 Expanded(
//                   child: Divider(
//                     color:
//                         homeScreenController.personalDetailScreenStatus.value ==
//                                 AddEmployeEnum.done
//                             ? Colors.blue
//                             : Colors.green,
//                     thickness: 3,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // ++++++++++++++++++++++++++++++++++++++++++
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     const Expanded(
//           //       child: Divider(
//           //         color: Colors.white,
//           //         thickness: 5,
//           //       ),
//           //     ),
//           //     Container(
//           //       height: 100,
//           //       width: 50,
//           //       decoration: BoxDecoration(
//           //         border: Border.all(
//           //           width: 2,
//           //           color:
//           //               homeScreenController.EmployeList.value == Myenum.first
//           //                   ? Colors.blue
//           //                   : Colors.green,
//           //         ),
//           //         shape: BoxShape.circle,
//           //       ),
//           //       child: Container(
//           //         height: 70,
//           //         width: 32,
//           //         decoration: BoxDecoration(
//           //             shape: BoxShape.circle,
//           //             color: homeScreenController.EmployeList.value ==
//           //                         Myenum.second ||
//           //                     homeScreenController.EmployeList.value ==
//           //                         Myenum.third
//           //                 ? Colors.green
//           //                 : Colors.blue),
//           //         margin: const EdgeInsets.all(5),
//           //         child: const Padding(
//           //           padding: EdgeInsets.only(top: 0, left: 0),
//           //           child: Icon(
//           //             Icons.done_outlined,
//           //             size: 20,
//           //             color: Colors.white,
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //     Expanded(
//           //       child: Divider(
//           //         color: homeScreenController.EmployeList.value == Myenum.first
//           //             ? Colors.blue
//           //             : Colors.green,
//           //         thickness: 3,
//           //       ),
//           //     ),
//           //   ],
//           // ),

//           Text(
//             widget.value,
//             style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//                 color: homeScreenController.personalDetailScreenStatus.value ==
//                             AddEmployeEnum.done ||
//                         homeScreenController.personalDetailScreenStatus.value ==
//                             AddEmployeEnum.inProgress
//                     // color: homeScreenController.EmployeList.value == Myenum.first
//                     ? Colors.grey
//                     : Colors.black),
//           ),

//           // Text(
//           //   "Personal\nDetails",
//           //   style: TextStyle(
//           //       fontSize: 12,
//           //       fontWeight: FontWeight.bold,
//           //       color: homeScreenController.EmployeList.value == Myenum.first
//           //           ? Colors.black
//           //           : Colors.grey),
//           // ),
//         ],
//       ),
//     );
//   }
// }
