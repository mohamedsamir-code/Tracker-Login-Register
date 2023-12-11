import 'package:flutter/material.dart';
import 'package:tracker_login_register/shared/constant.dart';
class BusInfo extends StatelessWidget {
  const BusInfo({super.key});
  static const String routeName = 'bus-id';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text('Bus Data'),
      //   centerTitle: true,
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16.0),
      //       child: Align(
      //         alignment: Alignment.centerRight,
      //         child: Text(
      //           'Supervisor',
      //           style: TextStyle(fontSize: 16),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Padding(padding: EdgeInsets.all(30.0),child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/bus_data_container.png'),
          SizedBox(height: 100,),
          Card(
            color: Color(0xffc1cbd1),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset('assets/bus_id.PNG', width: 100),
                  SizedBox(width: 100),
                  Text('12336', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Card(
            color: Color(0xffc1cbd1),
            child: ListTile(
              leading: Image.asset('assets/driver.PNG'),
              title: Text('Mohamed Ahmed'),
              subtitle: Text('📞 01002454242'),
            ),
          ),
        ],
      ),),
    );
  }
}
