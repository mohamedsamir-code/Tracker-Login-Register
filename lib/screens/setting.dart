import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/login.dart';
import 'package:tracker_login_register/screens/profile.dart';
import 'package:tracker_login_register/shared/constant.dart';

import 'bus_info.dart';
class Setting extends StatelessWidget {
  const Setting({super.key});
  static const String routeName = 'setting';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: thirdColor,
          child: Scaffold(
            backgroundColor: Color(0xff071a26),
            body: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, Profile.routeName),
                  child: Row(children: [
                    SizedBox(width: 130.0,),
                    Text('Profile',style: TextStyle(color: Colors.white,fontSize: 30),),
                    SizedBox(width: 15,),
                    Image.asset('assets/ic_profile.PNG',width: 50,height: 50,)
                  ],
                  ),
                ),
                SizedBox(height: 200.0,),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, BusInfo.routeName),
                  child: Row(children: [
                    SizedBox(width: 130.0,),
                    Text('Bus Info',style: TextStyle(color: Colors.white,fontSize: 30),),
                    SizedBox(width: 15,),
                    Image.asset('assets/ic_bus_info.PNG',width: 50,height: 50,)
                  ],
                  ),
                ),
                SizedBox(height: 200.0,),
                InkWell(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, Login.routeName, (route) => false),
                  child: Row(children: [
                    SizedBox(width: 200.0,),
                    Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 30),),
                    SizedBox(width: 15,),
                    Image.asset('assets/ic_log_out.PNG',width: 50,height: 50,)
                  ],
                  ),
                ),
              ],
            ),)
          ),
        )
      ],
    );
  }
}