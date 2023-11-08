import 'package:flutter/material.dart';
import 'package:tracker_login_register/shared/constant.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Tracker',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
