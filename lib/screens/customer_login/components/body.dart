import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('LOGIN'),
          SvgPicture.asset(
            'assets/images/login.svg',
            width: size.width * 0.65,
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  Background({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png'),
            width: size.width * 0.35,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/images/login_bottom.png'),
            width: size.width * 0.4,
          ),
          child,
        ],
      ),
    );
  }
}

class OtpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: getProportionateScreenWidth(300),
      child: Theme(
        data: ThemeData(
            primaryColor: Colors.orange, primaryColorDark: Colors.red),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Color(0xFFFFB38A),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            style: TextStyle(
                color: kTextColor,
                fontSize: getProportionateScreenHeight(20),
                fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.phone,
                color: kPrimaryColor,
              ),
              prefix: Text('+91'),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(50)),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

// SizedBox(
// child: SingleChildScrollView(
// child: Column(
// children: [
// Padding(
// padding: EdgeInsets.symmetric(
// vertical: getProportionateScreenHeight(28),
// horizontal: getProportionateScreenWidth(20),
// ),
// child: Text(
// 'Login Account',
// style: TextStyle(
// fontSize: getProportionateScreenWidth(28),
// fontWeight: FontWeight.bold,
// color: Colors.black,
// height: 1.5),
// ),
// ),
// Container(
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// image: DecorationImage(
// image: AssetImage('assets/images/otpimage.png'),
// )),
// height: getProportionateScreenHeight(300),
// width: getProportionateScreenWidth(300),
// ),
// SizedBox(
// height: getProportionateScreenHeight(50.0),
// ),
// OtpForm(),
// ],
// ),
// ),
// )
