import 'package:flutter/material.dart';
import 'package:hope_project/constants.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({
    Key key,
    @required this.size,
    @required this.hintText,
    @required this.keyBoardType,
    @required this.icon,
  }) : super(key: key);

  final double size;
  final TextInputType keyBoardType;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextFormField(
        keyboardType: keyBoardType,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
