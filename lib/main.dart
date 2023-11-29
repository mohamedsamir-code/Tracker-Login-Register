import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker_login_register/screens/arrived_bus.dart';
import 'package:tracker_login_register/screens/face_recognition.dart';
import 'package:tracker_login_register/screens/face_recognition_2.dart';
import 'package:tracker_login_register/screens/home.dart';
import 'package:tracker_login_register/screens/live.dart';
import 'package:tracker_login_register/screens/login.dart';
import 'package:tracker_login_register/screens/register.dart';
import 'package:tracker_login_register/screens/splash.dart';
import 'package:tracker_login_register/screens/student_sheet.dart';
import 'package:tracker_login_register/screens/take_care_of_child.dart';
import 'package:tracker_login_register/screens/today_trip.dart';
import 'package:tracker_login_register/shared/app_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var provider = AppProvider();
  runApp(ChangeNotifierProvider(
      create: (buildContext) {
        return provider;
      },
      child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Splash.routeName : (context) => Splash(),
        ArrivedBus.routeName : (context) => ArrivedBus(),
        TakeCateOfChild.routeName : (context) => TakeCateOfChild(),
        Login.routeName : (context) => Login(),
        Register.routeName : (context) => Register(),
        Home.routeName : (context) => Home(),
        StudentSheet.routeName : (context) => StudentSheet(),
        TodayTrip.routeName : (context) => TodayTrip(),
        Live.routeName : (context) => Live(),
        FaceRecognition.routeName : (context) => FaceRecognition(),
        FaceRecognitionTwo.routeName : (context) => FaceRecognitionTwo(),
      },
    );
  }
}
