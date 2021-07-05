import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hope_project/constants.dart';
import 'package:hope_project/screens/user_type.dart';
import 'package:hope_project/size_config.dart';
import 'package:hope_project/components/splash_content.dart';
import 'package:hope_project/components/default_button.dart';
import 'package:hope_project/routes.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final List<Map<String, String>> splashContentData = [
    {'text': 'Welcome to Hope', 'image': 'assets/images/intro1.png'},
    {
      'text': 'We help people to connect \nwith stores around you',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We show the easy way to shop. \nJust stay at home with us',
      'image': 'assets/images/splash_3.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => SplashContent(
                  text: splashContentData[index]['text'],
                  image: splashContentData[index]['image'],
                ),
                itemCount: splashContentData.length,
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashContentData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(),
                      DefaultButton(
                        press: () {
                          Navigator.pushNamed(context, UserType.routeName);
                        },
                        text: 'Continue',
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot({int index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
