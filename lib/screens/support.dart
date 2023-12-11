import 'package:flutter/material.dart';
import 'package:tracker_login_register/shared/constant.dart';
class Support extends StatelessWidget {
  const Support({super.key});
  static const String routeName = 'support';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: thirdColor,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: secondryColor,
              centerTitle: true,
              title: Text(
                'Support',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
