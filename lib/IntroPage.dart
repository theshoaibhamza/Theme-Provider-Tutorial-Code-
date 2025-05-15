// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:mycofeeshop/Widgets/BoldText.dart';
import 'package:mycofeeshop/Widgets/HomePage.dart';
import 'package:mycofeeshop/Widgets/LightText.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).colorScheme.primary;
    Color secondary = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image

          Center(
              child: Image.asset(
            "assets/1.png",
            color: primary,
          )),

          // container that leads to the home page

          SizedBox(
            height: 35,
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              width: 300,
              height: 70,
              child: Center(
                child: BoldText(size: 30, text: "Home Page", color: secondary),
              ),
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
