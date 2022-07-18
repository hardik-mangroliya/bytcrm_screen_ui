// ignore_for_file: library_private_types_in_public_api
import 'package:bytcrm_screen_ui/module/home/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:flutter/widgets.dart';
import '../widgets/widget_homeScreen.dart';
import '../widgets/widget_endview.dart';
import '../widgets/widget_secondScreen.dart';
import '../widgets/widget_thered_screen.dart';
import '../widgets/widget_topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ScrollController scrollController = ScrollController();
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Add Employee",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
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
                // scrollDirection: Axis.vertical,
                controller: homeScreenController.pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  InformationForm(),
                  SecondScreen(),
                  TheredScreen(),
                ],
              ),
            ),
            Endview(),
          ],
        ),
      ),
    );
  }
}
