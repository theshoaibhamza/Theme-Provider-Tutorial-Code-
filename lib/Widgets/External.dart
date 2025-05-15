// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import, file_names, must_be_immutable, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mycofeeshop/Themes/ThemeProvider.dart';
import 'package:mycofeeshop/Widgets/BoldText.dart';
import 'package:provider/provider.dart';

class External extends StatelessWidget {
  const External({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //

            //---------------------------------------------//
            //----------- How To Change Theme -------------//
            //---------------------------------------------//

            //

            Center(
                child: GestureDetector(
                    onTap: () {
                      print("i'm pressed");
                      Provider.of<Themeprovider>(context, listen: false)
                          .changeTheme();
                    },
                    child: BoldText(text: "Hello I'm Theme")))
          ],
        ),
      ),
    );
  }
}
