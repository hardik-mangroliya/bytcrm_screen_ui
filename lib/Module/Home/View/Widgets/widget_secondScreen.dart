import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../../../Core/common_function.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController dateJoin = TextEditingController();
  double _currentSliderValue = 5;

// +++++++++++++++++++++++++++++
  DateTime selectedDate = DateTime.now();
  bool showDate = false;
  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }

  String getDate() {
    return DateFormat('MMM d, yyyy').format(selectedDate);
  }

// +++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {
    // ++++++++++++++++++Second Screen Complete++++++++++++++++++++
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 51),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: 400,
              height: 48,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: InkWell(
                onTap: () {
                  _selectDate(context);
                  showDate = true;
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: showDate
                      ? Text(getDate())
                      : const Text(
                          "Joining Date",
                          style: TextStyle(color: Colors.grey),
                        ),
                ),
              ),
            ),
            // showDate ? Text(getDate()) : const SizedBox(),
            // ],
            // +++++++++++++++++++++++
            // InkWell(
            //   onTap: () {
            //     _selectDate(context);
            //     showDate = true;
            //     // dateJoin.text = showDate ? getDate() : " ";
            //   },
            //   child: Container(
            //     width: 250,
            //     height: 45,
            //     decoration:
            //         BoxDecoration(border: Border.all(color: Colors.grey)),
            //     child: const Text("Join Date"),

            //   ),
            //   // dateJoin.text = showDate ? getDate() : " ";
            //   //  showDate ? Center(child: Text(getDate())) : const SizedBox(),
            // ),
            // ++++++++++++++++++++++
            // TextFormField(
            //   controller: dateJoin,
            //   inputFormatters: [LengthLimitingTextInputFormatter(10)],
            //   keyboardType: TextInputType.number,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     hintText: "Joining Date",
            //     hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            //     suffixIcon: Icon(
            //       Icons.calendar_month_outlined,
            //     ),
            //   ),
            //   onTap: () async {
            //     _selectDate(context);
            //     showDate = true;
            //     // DateTime? date = DateTime(1900);
            //     // FocusScope.of(context).requestFocus(new FocusNode());

            //     // date = await showDatePicker(
            //     //     context: context,
            //     //     initialDate: DateTime.now(),
            //     //     firstDate: DateTime(1900),
            //     //     lastDate: DateTime(2100));
            //     // // dateJoin.text = date!.toIso8601String();
            //     dateJoin.text = showDate ? getDate() : " ";
            //     // CommonFunction.dateFormatterChange(date ?? DateTime.now());
            //   },
            // ),
            // const SizedBox(
            //   height: 33,
            // ),
            const Padding(
              padding: EdgeInsets.only(right: 250, top: 20),
              child: Text("EMPLOYEMENT TIME"),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 132.5,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    // border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Full Time",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  width: 132.5,
                  height: 36,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  child: const Center(
                    child: Text(
                      "Part Time",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text("WORKING HOURS PER DAY"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "2:30 hr",
                    style: TextStyle(color: Colors.orange, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 21),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              activeColor: Colors.blue[400],
              inactiveColor: Colors.blue[200],
              onChanged: (double value) {
                setState(
                  () {
                    _currentSliderValue = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
// ===========================================  

// ++++++++++Date+++++++++++++++++++

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

// @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TextScreen(),
//     );
//   }
// }

// class TextScreen extends StatefulWidget {
//   const TextScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<TextScreen> createState() => _TextScreenState();
// }

// +++++++++++++++++++++++++++
// class _TextScreenState extends State<TextScreen> {
//   DateTime selectedDate = DateTime.now();
//   bool showDate = false;
//   Future<DateTime> _selectDate(BuildContext context) async {
//     final selected = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(1900),
//       lastDate: DateTime(2100),
//     );
//     if (selected != null && selected != selectedDate) {
//       setState(() {
//         selectedDate = selected;
//       });
//     }
//     return selectedDate;
//   }

//  String getDate() {
//     if (selectedDate == null) {
//       return 'select date';
//     } else {
//       return DateFormat('MMM d, yyyy').format(selectedDate);
//     }
//   }

//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Date Timer Picker'),
//         centerTitle: true,
//         backgroundColor: Colors.teal,
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   _selectDate(context);
//                   showDate = true;
//                 },
//                 child: const Text('Date Picker'),
//               ),
//             ),
//             showDate ? Center(child: Text(getDate())) : const SizedBox(),
//           ],
//         ),
//       ),
//     );
//   }
// }
