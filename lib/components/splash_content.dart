import 'package:flutter/material.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent({this.text, this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Hope',
          style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenHeight(50)),
        ),
        Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenHeight(20)),
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(200),
        )
      ],
    );
  }
}
