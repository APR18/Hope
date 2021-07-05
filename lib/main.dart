import 'package:flutter/material.dart';
import 'package:hope_project/screens/loading_screen.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
      ).copyWith(primaryColor: Colors.white),
      // home: LoadingScreen()
      initialRoute: LoadingScreen.routeName,
      routes: routes,
    );
  }
}
