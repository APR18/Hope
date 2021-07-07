import 'package:flutter/material.dart';
import 'package:hope_project/components/default_button.dart';
import 'package:hope_project/size_config.dart';
import 'package:flutter/services.dart';
import '../../constants.dart';

class OTPVerification extends StatelessWidget {
  static String routeName = 'loginVerification';

  // const OTPVerification({Key? key}) : super(key: key);

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
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(20)),
                  child: Center(
                    child: Text(
                      "OTP Verification",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                ),
              ),
              Text(
                'We have sent the code verification \n to your mobile number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(20),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCircleTextField(
                        context: context, size: size, first: true, last: false),
                    buildCircleTextField(
                        context: context,
                        size: size,
                        first: false,
                        last: false),
                    buildCircleTextField(
                        context: context,
                        size: size,
                        first: false,
                        last: false),
                    buildCircleTextField(
                        context: context, size: size, first: false, last: true),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              DefaultButton(
                buttonSize: size.width * 0.8,
                press: () {
                  Navigator.pushNamed(context, OTPVerification.routeName);
                },
                text: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCircleTextField({context, Size size, bool first, last}) {
    return Container(
      width: size.width * 0.14,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 2,
            offset: const Offset(0, 2),
          )
        ],
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(42),
        ],
        keyboardType: TextInputType.number,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
