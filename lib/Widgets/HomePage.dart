// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import, file_names, must_be_immutable, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mycofeeshop/Themes/ThemeProvider.dart';
import 'package:mycofeeshop/Widgets/BoldText.dart';
import 'package:mycofeeshop/Widgets/External.dart';
import 'package:mycofeeshop/Widgets/LightText.dart';
import 'package:mycofeeshop/Widgets/Tile.dart';
import 'package:mycofeeshop/Widgets/Tile2.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List Names = [
    "Cappucciono", // 0 index
    "Espresso", // 1 index
    "Latte", // 2 index
    "Flat Wallio", // 3 index
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              label: "")
        ]),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Icon(
                          Icons.apps,
                          size: 30,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      GestureDetector(
                        onTap: () {
                          // move to a Page
                          Provider.of<Themeprovider>(context, listen: false)
                              .changeTheme();
                        },
                        child: Container(
                          child: Image.asset("assets/me.png"),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: BoldText(
                    text: "Find the best\ncoffee for you",
                    size: 35,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        // icon

                        Icon(Icons.search),

                        // size box

                        SizedBox(
                          width: 10,
                        ),

                        // field

                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Find your Cofee",
                              border: InputBorder.none),
                        ))
                      ],
                    ),
                  ),
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                ),

                SizedBox(
                  height: 30,
                ),

                // list view . builder

                Container(
                  height: 30,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Names.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 30,
                          width: 110,
                          child: Center(
                              child: BoldText(
                                  text: Names[index],
                                  size: 17,
                                  color: index == 0
                                      ? Colors.orange
                                      : Colors.grey.withOpacity(0.3))),
                        );
                      }),
                ),

                // Image Containers...

                SizedBox(
                  height: 30,
                ),

                Tile(),

                // Special For You
                SizedBox(
                  height: 30,
                ),

                BoldText(text: "Special For You"),
                SizedBox(
                  height: 20,
                ),
                Tile2()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
