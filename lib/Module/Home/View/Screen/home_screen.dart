import 'package:bytcrm_screen_ui/Enum/enum.dart';
import 'package:bytcrm_screen_ui/Module/Home/Controller/controller.dart';
import 'package:bytcrm_screen_ui/Module/Home/View/Widgets/widget_endview.dart';
import 'package:bytcrm_screen_ui/Module/Home/View/Widgets/widget_homeScreen.dart';
import 'package:bytcrm_screen_ui/Module/Home/View/Widgets/widget_secondScreen.dart';
import 'package:bytcrm_screen_ui/Module/Home/View/Widgets/widget_third_screen.dart';
import 'package:bytcrm_screen_ui/Module/Home/View/Widgets/widget_topbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Add Employee",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
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
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              const Topbar(),
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    WidgetsBinding.instance.focusManager.primaryFocus!
                        .unfocus();
                  },
                  controller: homeScreenController.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    InformationForm(),
                    SecondScreen(),
                    ThirdScreen(),
                  ],
                ),
              ),
              const Endview(),
            ],
          ),
        ),
      ),
    );
  }
}
