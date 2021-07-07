import 'package:flutter/material.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/size_config.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({this.text, this.press, this.buttonSize});
  final String text;
  final Function press;
  final double buttonSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonSize,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}
