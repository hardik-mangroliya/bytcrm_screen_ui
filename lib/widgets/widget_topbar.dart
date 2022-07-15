import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Topbar extends StatefulWidget {
  const Topbar({Key? key}) : super(key: key);

  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, bottom: 5),
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
                          shape: BoxShape.circle, color: Colors.blue),
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
                        thickness: 3,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Personal",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                        thickness: 3,
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 32,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 24, left: 11),
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const Expanded(
                        child: Divider(
                      color: Colors.blue,
                      thickness: 3,
                    ))
                  ],
                ),
                const Text(
                  "Joining",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
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
                      thickness: 3,
                    )),
                    Container(
                      height: 70,
                      width: 32,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 24, left: 11),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
