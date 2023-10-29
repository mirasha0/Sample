import 'package:flutter/material.dart';

import 'globel/constant.dart';
import 'login_screen.dart';

class onboard extends StatelessWidget {
  const onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double relativeWidth = size.width / Constants.referenceWidth;
    double relativeHeight = size.height / Constants.referenceHeight;

    final getStartedButton = Material(
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      color: const Color(0xFF1FCC79),
      child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(160, 0, 160, 0),
          height: 56,
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                builder: (context) =>  Login(),
            ),
            );
          },
          child: const Text(
            'Get Started',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: 0.10,
            ),
          )),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: relativeHeight * 110,
                left: relativeWidth * 24,
              ),
              child: Image.asset('assets/global.png'),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: relativeHeight * 58,
                    right: relativeWidth * 39,
                    left: relativeWidth * 40),
                child: const Text(
                  'Initiating Global Deliveries',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2D3D5C),
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                    letterSpacing: 0.50,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: relativeHeight * 20,
                  left: relativeWidth * 60,
                  right: relativeWidth * 60),
              child: const Text(
                'Step into a world of seamless \ncargo services \nwelcome to our community!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9FA5C0),
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.59,
                  letterSpacing: 0.50,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: relativeHeight * 45,
                  left: relativeWidth * 5,
                  right: relativeWidth * 5),
              child: getStartedButton,
            )
          ],
        ),
      ),
    );
  }
}
