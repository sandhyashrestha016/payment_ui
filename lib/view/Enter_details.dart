// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:work/models/text_widget.dart';

class EnterDetails extends StatefulWidget {
  const EnterDetails({Key? key}) : super(key: key);

  @override
  _EnterDetailsState createState() => _EnterDetailsState();
}

class _EnterDetailsState extends State<EnterDetails> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 500,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                      text: "Enter details",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      colors: Colors.deepPurpleAccent),
                  CustomText(
                      text: "Scan a card",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      colors: Colors.grey),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                        text: "Name",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        colors: Colors.grey),
                    TextFormField(
                        autocorrect: true, keyboardType: TextInputType.name),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                        text: "Card Number",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        colors: Colors.grey),
                    TextFormField(
                        autocorrect: true, keyboardType: TextInputType.number),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                        text: "Expiry Date",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        colors: Colors.grey),
                    TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.datetime),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                        text: "CVV",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        colors: Colors.grey),
                    TextFormField(
                        autocorrect: true, keyboardType: TextInputType.number),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "Save this card",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      colors: Colors.grey),
                  FlutterSwitch(
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
