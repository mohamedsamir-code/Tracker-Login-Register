import 'package:flutter/material.dart';

import '../shared/constant.dart';

class FaceRecognitionThree extends StatelessWidget {
  const FaceRecognitionThree({super.key});

  static const String routeName = 'face-rec-th';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: thirdColor,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Image.asset('assets/face_id_3.png'),
          ),
        ],
      ),
    );
  }
}
