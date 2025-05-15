import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mycofeeshop/IntroPage.dart';
import 'package:mycofeeshop/Themes/ThemeProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Themeprovider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Themeprovider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
          theme: themeProvider.getThemeData(),
          darkTheme: ThemeData.dark(),
        );
      },
    );
  }
}
