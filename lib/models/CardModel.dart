// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names

// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

class CardModel extends StatelessWidget {
  const CardModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
    return Container(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            child: Container(
              width: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange),
              child: List(
                imagelocation: 'images/maestro.png',
                icon: Icons.menu,
                text1: 'Master Card',
                text2: 'Exp Date',
                text3: '10/20',
              ),
            ),
            onTap: () {
              print("Card1");
            },
          ),
          SizedBox(width: 20),
          InkWell(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purpleAccent),
              child: List(
                imagelocation: 'images/visa.png',
                icon: Icons.menu,
                text1: 'Visa Card',
                text2: 'Exp Date',
                text3: '10/20',
              ),
            ),
            onTap: () {
              print("Card2");
            },
          ),
        ],
      ),
    );
  }
}

class List extends StatelessWidget {
  final String imagelocation;
  final IconData icon;
  final String text1;
  final String text2;
  final String text3;

  // ignore: use_key_in_widget_constructors
  const List({
    required this.imagelocation,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagelocation,
                height: 50.0,
                width: 40.0,
              ),
              Icon(icon),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            text1,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 100),
          Text(text2,
              style: const TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 10),
          Text(text3, style: const TextStyle(color: Colors.white, fontSize: 16))
        ],
      ),
    );
  }
}
