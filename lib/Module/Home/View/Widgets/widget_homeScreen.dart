import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../../../Core/common_function.dart';

class InformationForm extends StatefulWidget {
  const InformationForm({Key? key}) : super(key: key);

  State<InformationForm> createState() => _InformationFormState();
}

class _InformationFormState extends State<InformationForm> {
  TextEditingController dateBirth = TextEditingController();
  TextEditingController dateAnniversary = TextEditingController();

  DateTime birthdate = DateTime.now();
  bool showBDate = false;
  Future<DateTime> _birthdate(BuildContext context) async {
    final selecteBD = await showDatePicker(
      context: context,
      initialDate: birthdate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selecteBD != null && selecteBD != birthdate) {
      setState(() {
        birthdate = selecteBD;
      });
    }
    return birthdate;
  }

  String getBDate() {
    return DateFormat('MMM d, yyyy').format(birthdate);
  }

  DateTime annivesaryDate = DateTime.now();
  bool showDate = false;
  Future<DateTime> _annivesaryDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: annivesaryDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selected != null && selected != annivesaryDate) {
      setState(() {
        annivesaryDate = selected;
      });
    }
    return annivesaryDate;
  }

  String getDate() {
    return DateFormat('MMM d, yyyy').format(annivesaryDate);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          SizedBox(
            child: Stack(
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
                              shape: BoxShape.circle, color: Colors.grey[400]),
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 21),
            child: TextFormField(
              keyboardType: TextInputType.text,
              inputFormatters: [LengthLimitingTextInputFormatter(50)],
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
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "+91",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Mobile Number*",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: TextFormField(
              inputFormatters: [LengthLimitingTextInputFormatter(40)],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email ID*",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: 200,
                    height: 58,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {
                        _birthdate(context);
                        showBDate = true;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: showBDate
                            ? Text(getBDate())
                            : const Text(
                                "Birthday ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: 200,
                    height: 58,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {
                        _annivesaryDate(context);
                        showDate = true;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: showDate
                            ? Text(getDate())
                            : const Text(
                                "Anniversary",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                      ),
                    ),
                  ),
                ),
              ),
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
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
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
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ),
              )
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
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            child: Container(
              width: double.infinity,
              height: 39,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(color: Colors.blue.shade50),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "ADD MORE DETAIL",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.lens_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
