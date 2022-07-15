import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Endview extends StatefulWidget {
  const Endview({Key? key}) : super(key: key);

  State<Endview> createState() => _EndviewState();
}

class _EndviewState extends State<Endview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150, top: 10, bottom: 15),
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
    );
  }
}
