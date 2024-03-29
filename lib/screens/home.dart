import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/live.dart';
import 'package:tracker_login_register/screens/setting.dart';
import 'package:tracker_login_register/screens/student_sheet.dart';
import 'package:tracker_login_register/screens/today_trip.dart';
import 'package:tracker_login_register/shared/constant.dart';

import 'face_recognition.dart';

class Home extends StatefulWidget {
  Home({super.key});

  static const String routeName = 'home';
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> screens = [TodayTrip(),Live(),FaceRecognition(),StudentSheet(),Setting()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      color: thirdColor,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            // appBar: AppBar(
            //   toolbarHeight: 100,
            //   backgroundColor: secondryColor,
            //   title: Padding(padding: EdgeInsets.only(top: 40.0,),child: Row(
            //     children: [
            //       SizedBox(width: 70,),
            //       Image(image: AssetImage('assets/bus_logo.png'),height: 40, width: 50,),
            //       SizedBox(width: 10.0,),
            //       Text(
            //         'i School Bus',
            //         style: TextStyle(
            //             fontSize: 25,
            //             fontWeight: FontWeight.w400,
            //             color: Colors.white
            //         ),
            //       )
            //     ],
            //   ),),
            //   centerTitle: true,
            // ),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              unselectedItemColor: Colors.white,
              selectedItemColor: primaryColor,
              items:
              [
                BottomNavigationBarItem(
                    icon: Icon(Icons.directions_bus_rounded),
                    label: 'Today Trip',
                    backgroundColor: secondryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on_outlined),
                    label: 'Live',
                    backgroundColor: secondryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/face-recognition.png'),
                    ),
                    label: 'Face Recognition',
                    backgroundColor: secondryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/Black.png'),
                    ),
                    label: 'Student Sheet',
                    backgroundColor: secondryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Setting',
                    backgroundColor: secondryColor),
              ],
            ),
          )
        ],
      ),
    );
  }
}
