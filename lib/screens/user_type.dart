import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hope_project/components/default_button.dart';
import 'package:hope_project/size_config.dart';
import 'package:hope_project/screens/customer_login/otp_login.dart';

class UserType extends StatelessWidget {
  static String routeName = '/user';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(220)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/intro_1.png'),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Container(
                          child: DefaultButton(
                        buttonSize: size.width * 0.8,
                        text: 'Shop',
                        press: () {},
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(220)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/intro_1.png'),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Container(
                          child: DefaultButton(
                        buttonSize: size.width * 0.8,
                        text: 'Customer',
                        press: () {
                          Navigator.pushNamed(context, OtpScreen.routeName);
                        },
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Text(
// 'Login Account',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.white,
// fontSize: getProportionateScreenHeight(32)),
// ),
