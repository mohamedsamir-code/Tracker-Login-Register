import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/notification.dart';
class Live extends StatelessWidget {
  const Live({super.key});
  static const String routeName = 'live';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
              30,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffc2ccd2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  )),
              width: 396,
              height: 66.0,
              child: Row(
                children: [
                  SizedBox(width: 10.0,),
                  Image.asset('assets/supervisor_logo.png',height: 40,width: 40,),
                  SizedBox(width: 50.0,),
                  // IconButton(
                  //   onPressed: () => Drawer(
                  //     backgroundColor: thirdColor,
                  //     child: ListView(
                  //       children: [
                  //         const DrawerHeader(
                  //           decoration: BoxDecoration(
                  //             color: Color(0xff0C344C),
                  //           ),
                  //           child: Image(
                  //             image: AssetImage(
                  //               'assets/logo.png',
                  //             ),
                  //           ),
                  //         ),
                  //         ListTile(
                  //           title: const Image(
                  //             image: AssetImage(
                  //               'assets/today_trips.png',
                  //             ),
                  //           ),
                  //           onTap: () {
                  //             // Update the state of the app.
                  //             // ...
                  //           },
                  //         ),
                  //         ListTile(
                  //           title: const Image(
                  //             image: AssetImage(
                  //               'assets/live.png',
                  //             ),
                  //           ),
                  //           onTap: () {
                  //             // Update the state of the app.
                  //             // ...
                  //           },
                  //         ),
                  //         ListTile(
                  //           title: const Image(
                  //             image: AssetImage(
                  //               'assets/face_recongnition.png',
                  //             ),
                  //           ),
                  //           onTap: () {
                  //             // Update the state of the app.
                  //             // ...
                  //           },
                  //         ),
                  //         ListTile(
                  //           title: const Image(
                  //             image: AssetImage(
                  //               'assets/student_sheet.png',
                  //             ),
                  //           ),
                  //           onTap: () {
                  //             // Update the state of the app.
                  //             // ...
                  //           },
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   icon: Icon(
                  //     Icons.menu,
                  //     color: Colors.black,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 50.0,
                  // ),
                  Text(
                    'Ongoing Trip',
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Stack(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),child: CircleAvatar(backgroundColor: Colors.red,radius: 3.0,)),
                      IconButton(onPressed: () => Navigator.pushNamed(context, Notifications.routeName), icon: Icon(Icons.notifications_none,color: Colors.black),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
