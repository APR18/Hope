import 'package:flutter/material.dart';
import 'package:hope_project/size_config.dart';
import 'package:hope_project/components/body.dart';

class LoadingScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
