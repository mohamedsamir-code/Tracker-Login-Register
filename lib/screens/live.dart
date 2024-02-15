import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:tracker_login_register/screens/home.dart';
import 'package:tracker_login_register/screens/notification.dart';

import '../shared/location_manager.dart';

class Live extends StatefulWidget {
  const Live({super.key});

  static const String routeName = 'live';

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {
  LocationManager locationManager = LocationManager();

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }

  // final Completer<GoogleMapController> _controller =
  // Completer<GoogleMapController>();
  static const String userLocationId = 'user';
  GoogleMapController? _controller; //عشان اعمل الموقع بتاع الشخص اللي لونه احمر

  static CameraPosition userLocation = const CameraPosition(
    // شايل position بتاع جوجل في كاليفورنيا
    target: LatLng(30.0360786, 31.1965017),
    zoom: 17,
  );

  // static const CameraPosition _kLake = CameraPosition( // شايل موقع بحيرة في امريكا
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);
  //  list of unique elements cannot be repeated
  Set<Marker> markers = {
    Marker(markerId: MarkerId(userLocationId), position: userLocation.target)
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
              34,
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
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/supervisor_logo.png',
                      height: 40,
                      width: 40,
                    ),
                    onTap: () => Navigator.pushNamed(context, Home.routeName),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
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
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 3.0,
                          )),
                      IconButton(
                        onPressed: () => Navigator.pushNamed(
                            context, Notifications.routeName),
                        icon:
                            Icon(Icons.notifications_none, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: userLocation,
            onMapCreated: (GoogleMapController controller) {
              // كونترولر هو object عند map عايز تعمل اي حاجة عند map من خلال controller دة
              //_controller.complete(controller);
              _controller = controller;
            },
            onTap: (latLang) {},
            markers: markers, //set of markers اللي بتحددها للخريطة
          )),
          ElevatedButton(
            onPressed: () {
              requestDriver();
            },
            child: Text('Request Driver'),
          )
        ],
      ),
    );
  }

  StreamSubscription<LocationData>? locationListener;

  void requestDriver() async {
    bool canGetLocation = await locationManager.canGetLocation();
    if (!canGetLocation) return;
    var locationData = await locationManager
        .getDeviceLocation(); // بتجيب اللوكيشن مرة واحدة بس
    print(locationData);
    locationManager.location.changeSettings(
      accuracy: LocationAccuracy.high,
      interval: 2000,
      distanceFilter: 0,
    );
    locationListener = locationManager
        .trackUserLocation() // بستمع للوكيشن الجديد كل اما يجي يتغير اعمله print
        .listen((locationData) {
      // باستخدام latitude,longitude
      // كل ما يجي location جديد يحرك الكاميرا position
      setState(() {
        userLocation = CameraPosition(
            target: LatLng(
                locationData.latitude ?? 0.0, locationData.longitude ?? 0.0));
        markers.add(Marker(
            markerId: MarkerId(userLocationId), position: userLocation.target));
        changeMapPosition(locationData);
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    locationListener?.cancel();
  }

  void changeMapPosition(LocationData locationData) {
    // كل ما الماركر بيتحرك بتتحرك الكاميرا معاه
    _controller?.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: userLocation.target, zoom: 17)));
  }
}
