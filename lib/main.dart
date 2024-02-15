import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker_login_register/screens/bus_driver.dart';
import 'package:tracker_login_register/screens/bus_info.dart';
import 'package:tracker_login_register/screens/bus_supervisor.dart';
import 'package:tracker_login_register/screens/create_new_password.dart';
import 'package:tracker_login_register/screens/face_recognition.dart';
import 'package:tracker_login_register/screens/face_recognition_2.dart';
import 'package:tracker_login_register/screens/face_recognition_3.dart';
import 'package:tracker_login_register/screens/forgot_password.dart';
import 'package:tracker_login_register/screens/home.dart';
import 'package:tracker_login_register/screens/live.dart';
import 'package:tracker_login_register/screens/login.dart';
import 'package:tracker_login_register/screens/notification.dart';
import 'package:tracker_login_register/screens/otp_verification.dart';
import 'package:tracker_login_register/screens/profile.dart';
import 'package:tracker_login_register/screens/register.dart';
import 'package:tracker_login_register/screens/setting.dart';
import 'package:tracker_login_register/screens/splash.dart';
import 'package:tracker_login_register/screens/student_sheet.dart';
import 'package:tracker_login_register/screens/supervising_students.dart';
import 'package:tracker_login_register/screens/support.dart';
import 'package:tracker_login_register/screens/today_trip.dart';
import 'package:tracker_login_register/shared/app_provider.dart';

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
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (context) => Splash(),
        SupervisingStudents.routeName: (context) => SupervisingStudents(),
        BusDriver.routeName: (context) => BusDriver(),
        Login.routeName: (context) => Login(),
        Register.routeName: (context) => Register(),
        Home.routeName: (context) => Home(),
        StudentSheet.routeName: (context) => StudentSheet(),
        TodayTrip.routeName: (context) => TodayTrip(),
        Live.routeName: (context) => Live(),
        FaceRecognition.routeName: (context) => FaceRecognition(),
        FaceRecognitionTwo.routeName: (context) => FaceRecognitionTwo(),
        Setting.routeName: (context) => Setting(),
        Profile.routeName: (context) => Profile(),
        BusInfo.routeName: (context) => BusInfo(),
        Support.routeName: (context) => Support(),
        FaceRecognitionThree.routeName: (context) => FaceRecognitionThree(),
        Notifications.routeName: (context) => Notifications(),
        BusSupervisor.routeName: (context) => BusSupervisor(),
        CreateNewPassword.routeName: (context) => CreateNewPassword(),
        ForgotPassword.routeName: (context) => ForgotPassword(),
        OtpVerification.routeName: (context) => OtpVerification(),
      },
    );
  }
}
