import 'package:flutter/material.dart';

import '../shared/constant.dart';

class FaceRecognitionTwo extends StatelessWidget {
  const FaceRecognitionTwo({super.key});
  static const String routeName = 'faceRecognitionTwo';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: thirdColor,
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(padding: EdgeInsets.all(25.0),child: Column(
                children: [
                  Image(image: AssetImage('assets/child_recognized.png')),
                  SizedBox(height: 50.0,),
                  Image(image: AssetImage('assets/face_lock.png')),
                  SizedBox(height: 90.0,),
                  Image(image: AssetImage('assets/seventy_percent.png')),
                  SizedBox(width: 10.0,),
                  Text('Scanning...',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),),
            ),
          ],
        ));
  }
}
