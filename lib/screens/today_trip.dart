import 'package:flutter/material.dart';
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
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20.0,
                  ),
                )),
            width: double.infinity,
            height: 40.0,
            child: Row(
              children: [
                SizedBox(width: 20.0,),
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
                  width: 140.0,
                ),
                Stack(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),child: CircleAvatar(backgroundColor: Colors.red,radius: 3.0,)),
                    IconButton(onPressed: () => print('notification'), icon: Icon(Icons.notifications_none,color: Colors.black),)
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Image(image: AssetImage('assets/today_trip_container.png'),height: 250,width: 386,),
        SizedBox(height: 20.0,),
        Image(image: AssetImage('assets/today_trip_container.png'),height: 250,width: 386,),
      ],
    );
  }
}
