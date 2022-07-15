// ignore_for_file: library_private_types_in_public_api

import 'package:bytcrm_screen_ui/widgets/widget_endview.dart';
import 'package:bytcrm_screen_ui/widgets/widget_topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../widgets/widget_body.dart';
import '../../../../widgets/widget_secondScreen.dart';
import '../../../../widgets/widget_thered_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
