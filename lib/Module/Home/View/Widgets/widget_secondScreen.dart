import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double _currentSliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 51),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Joining Date",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                suffixIcon: Icon(
                  Icons.calendar_month_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            const Padding(
              padding: const EdgeInsets.only(right: 250),
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
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blue),
                    borderRadius: const BorderRadius.only(
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
                  )),
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
                // SizedBox(width: 125),
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
