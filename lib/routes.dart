import 'package:flutter/cupertino.dart';
import 'package:hope_project/screens/loading_screen.dart';
import 'package:hope_project/screens/user_type.dart';
import 'package:hope_project/screens/customer_login/otp_login.dart';

final Map<String, WidgetBuilder> routes = {
  LoadingScreen.routeName: (context) => LoadingScreen(),
  UserType.routeName: (context) => UserType(),
  OtpScreen.routeName: (context) => OtpScreen()
};
