import 'package:bytcrm_screen_ui/enum/enum.dart';
import 'package:bytcrm_screen_ui/module/home/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

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
            () {
              final screen = homeScreenController.EmployeList.value;

              return GestureDetector(
                onTap: () {
                  switch (screen) {
                    case Myenum.first:
                      Get.back();
                      break;
                    case Myenum.second:
                      homeScreenController.pageController.animateToPage(0,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                      homeScreenController.EmployeList.value = Myenum.first;
                      break;
                    case Myenum.thered:
                      homeScreenController.pageController.animateToPage(1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                      homeScreenController.EmployeList.value = Myenum.second;
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
                  child: const Center(
                      child: Text(
                    "CANCEL",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              );
            },
          ),
          const SizedBox(
            width: 9,
          ),
          Obx(
            () {
              final screen = homeScreenController.EmployeList.value;
              return GestureDetector(
                onTap: () {
                  switch (screen) {
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
                      homeScreenController.EmployeList.value = Myenum.thered;
                      break;
                    case Myenum.thered:
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
                      children: const [
                        Text(
                          "NEXT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 13,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
