// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  final String text3;
  const CustomCard({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        children: [
          InkWell(
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 250,
              width: 350,
              child: Card(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/maestro.png",
                            height: 30,
                          ),
                          const SizedBox(width: 220),
                          Icon(icon),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        text1,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(height: 100),
                      Text(text2,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16)),
                      const SizedBox(height: 10),
                      Text(text3,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16))
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              // ignore: avoid_print
              print("card1");
            },
          ),
          InkWell(
            // ignore: sized_box_for_whitespace
            child: Wrap(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  height: 250,
                  width: 350,
                  child: Card(
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/maestro.png",
                                height: 30,
                              ),
                              const SizedBox(width: 220),
                              Icon(icon),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            text1,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(height: 100),
                          Text(text2,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16)),
                          const SizedBox(height: 10),
                          Text(text3,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              // ignore: avoid_print
              print("card2");
            },
          ),
        ]);
  }
}
