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
            body: Padding(padding: EdgeInsets.all(25),child: Column(
              children: [
                Image.asset('assets/support_container.png'),
                SizedBox(height: 15.0,),
                Image.asset('assets/how_can_we_help_you_today.png'),
                SizedBox(height: 60.0,),
                Image.asset('assets/rectangle_phone.png'),
              ],
            ),)
        )
    )]);
  }
}
