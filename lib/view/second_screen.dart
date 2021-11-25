import 'package:flutter/material.dart';
import 'package:work/models/text_widget.dart';
import 'package:work/view/Enter_details.dart';
import 'package:work/view/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      child: const Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FirstScreen()));
                      }),
                  const SizedBox(height: 12),
                  const CustomText(
                      text: "Add new card",
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      colors: Colors.black),
                  const SizedBox(height: 40),
                  const EnterDetails(),
                  const SizedBox(height: 10),
                  Center(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                        onPressed: () {
                          // ignore: avoid_print
                          print("pay now");
                        },
                        color: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const CustomText(
                            text: "Pay Now",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            colors: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
