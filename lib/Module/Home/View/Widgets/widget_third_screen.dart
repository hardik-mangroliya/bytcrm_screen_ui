import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  State<ThirdScreen> createState() => _TheredScreen();
}

class _TheredScreen extends State<ThirdScreen> {
  bool status = false;
  bool gps = false;
  bool call = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
            child: Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Live Location Tracking',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                              "This will track user live location when he is on field"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          FlutterSwitch(
                            activeColor: Colors.grey,
                            inactiveColor: Colors.grey.shade300,
                            width: 48,
                            height: 24,
                            value: status,
                            padding: 4,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'GPS Tracking ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                              "This will fetch location only when user Check-In OR Check-Out"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          FlutterSwitch(
                            activeColor: Colors.grey,
                            inactiveColor: Colors.grey.shade300,
                            width: 48,
                            height: 24,
                            value: gps,
                            padding: 4,
                            onToggle: (val) {
                              setState(() {
                                gps = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Call Logs',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                              "This will store call Logs of users if call is done from the App"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          FlutterSwitch(
                            activeColor: Colors.grey,
                            inactiveColor: Colors.grey.shade300,
                            width: 48,
                            height: 24,
                            value: call,
                            padding: 4,
                            onToggle: (val) {
                              setState(() {
                                call = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
