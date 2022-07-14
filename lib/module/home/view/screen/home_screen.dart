import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  height: 70,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 0, left: 0),
                                    child: Icon(
                                      Icons.done_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Divider(
                                    color: Colors.blue,
                                    thickness: 5,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Personal",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
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
                                    thickness: 5,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 24, left: 11),
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                    child: Divider(
                                  color: Colors.blue,
                                  thickness: 5,
                                ))
                              ],
                            ),
                            const Text(
                              "Joining",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            const Text(
                              "Details",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
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
                                  thickness: 5,
                                )),
                                Container(
                                  height: 70,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 24, left: 11),
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 5,
                                  ),
                                )
                              ],
                            ),
                            const Text("Employee",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                            const Text(
                              "Permission",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Container(
                              height: 97,
                              width: 97,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[400]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      width: MediaQuery.of(context).size.width,
                      left: 40,
                      top: 90,
                      child: Container(
                        height: 25,
                        width: 20,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Full Name*",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        width: 65,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          "+91",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Mobile Number*",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email ID*",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_month),
                            border: OutlineInputBorder(),
                            hintText: "Birth Date",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.calendar_month),
                          border: OutlineInputBorder(),
                          hintText: "Anniversary",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Designation",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          border: OutlineInputBorder(),
                          hintText: "Role*",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: OutlineInputBorder(),
                      hintText: "Reports To*",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    width: 339,
                    height: 39,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(color: Colors.blue.shade50),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "ADD MORE DETAIL",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Icon(
                            Icons.lens_outlined,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 150, top: 10, bottom: 15),
                  child: Row(
                    children: [
                      Container(
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
                      const SizedBox(
                        width: 9,
                      ),
                      Container(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
