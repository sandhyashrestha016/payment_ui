import 'package:flutter/material.dart';
import 'package:work/models/CardModel.dart';
import 'package:work/models/text_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back),
              const SizedBox(height: 10),
              const Text("Checkout",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
              const SizedBox(height: 50),
              const Text("Total bill amount",
                  style: TextStyle(fontSize: 18, color: Colors.grey)),
              const SizedBox(height: 10),
              const Text("\$820.00",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600)),
              const SizedBox(height: 80),
              Row(
                children: [
                  const Text("Saved Cards",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey)),
                  const SizedBox(width: 180),
                  InkWell(
                    child: Row(
                      children: [
                        Image.asset("images/add.png",
                            height: 18, color: Colors.blue),
                        const SizedBox(width: 10),
                        const Text("Add New",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue)),
                      ],
                    ),
                    onTap: () {
                      // ignore: avoid_print
                      print("add new");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   height: 200,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: cards.length,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           height: 200,
              //           width: 300,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: Color(cards[index].cardBackground),
              //           ),
              //         );
              //       }),
              // ),
              const CardModel(),
              const SizedBox(height: 50),
              Center(
                // ignore: deprecated_member_use
                child: RaisedButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print("pay now");
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: const CustomText(
                        text: "Pay Now",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        colors: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
