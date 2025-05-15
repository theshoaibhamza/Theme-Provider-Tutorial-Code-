// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import, file_names, must_be_immutable, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mycofeeshop/Widgets/BoldText.dart';
import 'package:mycofeeshop/Widgets/LightText.dart';

class Tile2 extends StatelessWidget {
  Tile2({super.key});

  List Names = [
    "Cappucciono", // 0 index
    "Espresso", // 1 index
    "Latte", // 2 index
    "Flat Wallio", // 3 index
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Names.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 230,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Stack(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/Coffee.png")),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BoldText(
                                    text: "5 Coffee Beans You\nMust Try !"),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LightText(
                                      text:
                                          "We have the best coffee\nall Over the world",
                                      size: 14,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              BoldText(
                                                size: 30,
                                                text: "\$",
                                                color: Colors.orange,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              BoldText(
                                                size: 30,
                                                text: "4.20",
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Container(
                                            child: Icon(Icons.add),
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
