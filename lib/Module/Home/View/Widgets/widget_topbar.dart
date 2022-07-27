import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Enum/enum.dart';
import '../../Controller/controller.dart';

class Topbar extends StatefulWidget {
  const Topbar({Key? key}) : super(key: key);

  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, bottom: 5),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 5,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: homeScreenController.EmployeList.value ==
                                    Myenum.first
                                ? Colors.blue
                                : Colors.green,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 70,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: homeScreenController.EmployeList.value ==
                                          Myenum.second ||
                                      homeScreenController.EmployeList.value ==
                                          Myenum.third
                                  ? Colors.green
                                  : Colors.blue),
                          margin: const EdgeInsets.all(4),
                          child: const Icon(
                            Icons.done_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: homeScreenController.EmployeList.value ==
                                  Myenum.first
                              ? Colors.blue
                              : Colors.green,
                          thickness: 3,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Personal\nDetails",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: homeScreenController.EmployeList.value ==
                                Myenum.first
                            ? Colors.black
                            : Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: homeScreenController.EmployeList.value ==
                                  Myenum.third
                              ? Colors.green
                              : Colors.blue,
                          thickness: 3,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: homeScreenController.EmployeList.value ==
                                Myenum.first
                            ? 40
                            : 50,
                        decoration: homeScreenController.EmployeList.value ==
                                    Myenum.second ||
                                homeScreenController.EmployeList.value ==
                                    Myenum.third
                            ? BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color:
                                      homeScreenController.EmployeList.value ==
                                              Myenum.third
                                          ? Colors.green
                                          : Colors.blue,
                                ),
                                shape: BoxShape.circle,
                              )
                            : const BoxDecoration(),
                        child: Container(
                          height: 70,
                          width: homeScreenController.EmployeList.value ==
                                  Myenum.first
                              ? 70
                              : 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: homeScreenController.EmployeList.value ==
                                      Myenum.third
                                  ? Colors.green
                                  : Colors.blue),
                          margin: homeScreenController.EmployeList.value ==
                                  Myenum.first
                              ? const EdgeInsets.all(0)
                              : const EdgeInsets.all(4),
                          child: Center(
                            child: homeScreenController.EmployeList.value ==
                                    Myenum.first
                                ? const Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  )
                                : const Icon(
                                    Icons.done_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: homeScreenController.EmployeList.value ==
                                  Myenum.third
                              ? Colors.green
                              : Colors.blue,
                          thickness: 3,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Joining\nDetails",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: homeScreenController.EmployeList.value ==
                                Myenum.second
                            ? Colors.black
                            : Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.blue,
                          thickness: 3,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: homeScreenController.EmployeList.value ==
                                    Myenum.first ||
                                homeScreenController.EmployeList.value ==
                                    Myenum.second
                            ? 40
                            : 50,
                        decoration: homeScreenController.EmployeList.value ==
                                Myenum.third
                            ? BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.blue,
                                ),
                                shape: BoxShape.circle,
                              )
                            : const BoxDecoration(),
                        child: Container(
                          height: 70,
                          width: homeScreenController.EmployeList.value ==
                                      Myenum.first ||
                                  homeScreenController.EmployeList.value ==
                                      Myenum.second
                              ? 70
                              : 32,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          margin: homeScreenController.EmployeList.value ==
                                  Myenum.third
                              ? const EdgeInsets.all(4)
                              : const EdgeInsets.all(0),
                          child: Center(
                            child: homeScreenController.EmployeList.value ==
                                        Myenum.first ||
                                    homeScreenController.EmployeList.value ==
                                        Myenum.second
                                ? const Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  )
                                : const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 5,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Employee\nPermission",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color:
                          homeScreenController.EmployeList.value == Myenum.third
                              ? Colors.black
                              : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
