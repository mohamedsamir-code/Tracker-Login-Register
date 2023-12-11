import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/supervising_students.dart';

import '../shared/constant.dart';

class Splash extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), navigateTo);
  }

  void navigateTo() {
    Navigator.pushNamedAndRemoveUntil(
        context, SupervisingStudents.routeName, (route) => false);
  }
  Widget build(BuildContext context) {
    return Container(
      color: thirdColor,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(child: Image.asset('assets/i_school_bus.png')),
          )
        ],
      ),
    );
  }
}
