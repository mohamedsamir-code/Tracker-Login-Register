import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/arrived_bus.dart';

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
        context, ArrivedBus.routeName, (route) => false);
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(child: Image.asset('assets/tracker_logo.png')),
          )
        ],
      ),
    );
  }
}
