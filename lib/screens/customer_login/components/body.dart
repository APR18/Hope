import 'package:flutter/material.dart';
import 'package:hope_project/components/default_button.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/size_config.dart';
import 'package:hope_project/components/RoundedInput.dart';
import 'package:hope_project/screens/customer_login/login_verification.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(400),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/otpscreen.png"),
                    fit: BoxFit.fill),
              ),
              child: Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
              ),
            ),
            RoundedInput(
                size: size.width * 0.8,
                hintText: 'Phone Number',
                keyBoardType: TextInputType.number,
                icon: Icons.phone),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DefaultButton(
              buttonSize: size.width * 0.8,
              press: () {
                Navigator.pushNamed(context, OTPVerification.routeName);
              },
              text: 'Get OTP',
            ),
          ],
        ),
      ),
    ));
  }
}
