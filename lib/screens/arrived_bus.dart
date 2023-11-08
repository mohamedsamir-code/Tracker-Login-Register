import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/take_care_of_child.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../shared/components.dart';
import '../shared/constant.dart';

class ArrivedBus extends StatelessWidget {
  static const String routeName = 'arrived-bus';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/arrived_bus.png',
                    width: 372,
                    height: 372,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'The Bus Has Arrived',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'When the bus arrives infront of your house',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'you will be notified its arrival',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  DotsIndicator(
                    dotsCount: 2,
                    position: 0,
                    decorator: DotsDecorator(
                      activeColors: [Color(0xfff2ba52), Colors.black],
                      size: const Size.square(9.0),
                      activeSize: const Size(35.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      textStyle: Colors.black,
                      background: primaryColor,
                      function: () => Navigator.pushNamedAndRemoveUntil(
                          context, TakeCateOfChild.routeName, (route) => false),
                      text: 'Next'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}