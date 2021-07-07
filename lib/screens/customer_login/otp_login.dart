import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/components/RoundedInput.dart';
import 'package:hope_project/size_config.dart';
import 'package:hope_project/components/default_button.dart';
import 'package:hope_project/screens/customer_login/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 100,
              right: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: -50,
              left: -60,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kPrimaryColor),
              ),
            ),
            Body()
          ],
        ));
  }
}

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Align(
//       alignment: Alignment.center,
//       child: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               Text(
//                 'OTP Verification',
//                 style: TextStyle(
//                   fontSize: getProportionateScreenHeight(25),
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               SvgPicture.asset('assets/images/login.svg'),
//               SizedBox(
//                 height: 40,
//               ),
//               RoundedInput(
//                 size: size,
//                 icon: Icons.phone,
//                 keyBoardType: TextInputType.number,
//                 hintText: 'Phone Number',
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               DefaultButton(
//                 text: 'Send OTP',
//                 press: () {},
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
