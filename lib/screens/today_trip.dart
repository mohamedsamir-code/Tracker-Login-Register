import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/live.dart';

import 'notification.dart';
class TodayTrip extends StatelessWidget {
  const TodayTrip({super.key});
  static const String routeName = 'today-trip';
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  'Today Trips',
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
        SizedBox(height: 20.0,),
        Padding(padding: EdgeInsets.only(right: 250.0),child: Text('Morning Trip',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),),
        SizedBox(height: 10.0,),
        Container(
          height: 213,
          width: 428,
          decoration: BoxDecoration(
            color: Color(0xffc2ccd2),
            borderRadius: BorderRadius.all(Radius.circular(25.0,),),
          ),
          child: Column(
            children: [
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('To School'),
                  SizedBox(width: 150.0,),
                  Text('6:00 AM'),
                ],
              ),
              SizedBox(height: 20.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                ],
                ),
              ),
              SizedBox(height: 60.0,),
              InkWell(child: Image.asset('assets/blue_start_container.png'),onTap: () => Navigator.pushNamed(context, Live.routeName),),
            ],
          ),
        ),
        //Image(image: AssetImage('assets/today_trip_container.png'),height: 250,width: 386,),
        SizedBox(height: 40.0,),
        Padding(padding: EdgeInsets.only(right: 250.0),child: Text('After Noon',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),),
        SizedBox(height: 10.0,),
        Container(
          height: 213,
          width: 428,
          decoration: BoxDecoration(
            color: Color(0xffc2ccd2),
            borderRadius: BorderRadius.all(Radius.circular(25.0,),),
          ),
          child: Column(
            children: [
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('To Home'),
                  SizedBox(width: 150.0,),
                  Text('2:00 AM'),
                ],
              ),
              SizedBox(height: 20.0,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(
                children: [
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                  Image.asset('assets/image_row_two.png',height: 50,),
                  Image.asset('assets/image_row.png',height: 50,),
                ],
              ),),
              SizedBox(height: 60.0,),
              Image.asset('assets/darkBlue_start_container.png'),
            ],
          ),
        ),
        //Image(image: AssetImage('assets/today_trip_container.png'),height: 250,width: 386,),
      ],
    );
  }
}
