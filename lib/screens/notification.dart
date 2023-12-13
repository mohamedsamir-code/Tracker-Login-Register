import 'package:flutter/material.dart';

import '../shared/constant.dart';
class Notifications extends StatelessWidget {
  const Notifications({super.key});
  static const String routeName = 'notification';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: thirdColor,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(padding: EdgeInsets.only(right: 0.5),child: Image.asset('assets/notification.png'),),
          ),
        ],
      ),
    );
  }
}
