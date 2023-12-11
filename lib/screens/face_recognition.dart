import 'package:flutter/material.dart';
import 'package:tracker_login_register/screens/face_recognition_2.dart';
import 'package:tracker_login_register/shared/constant.dart';
class FaceRecognition extends StatefulWidget {
  static const String routeName = 'face-recognition';
  @override
  _FaceRecognitionState createState() => _FaceRecognitionState();
}
class _FaceRecognitionState extends State<FaceRecognition> {
  @override
  Widget build(BuildContext context) {
    // File _imageFile;
    // List<Face> _faces;
    // bool isLoading = false;
    // ui.Image _image;
    //
    // _getImageAndDetectFaces() async {
    //   final imageFile = await ImagePicker.pickImage(
    //       source: ImageSource.gallery
    //   );
    //   setState(() {
    //     isLoading = true;
    //   });
    //   final image = FirebaseVisionImage.fromFile(imageFile);
    //   final faceDetector = FirebaseVision.instance.faceDetector(
    //       FaceDetectorOptions(
    //           mode: FaceDetectorMode.fast,
    //           enableLandmarks: true
    //       )
    //   );
    //   List<Face> faces = await faceDetector.processImage(image);
    //   if (mounted) {
    //     setState(() {
    //       _imageFile = imageFile;
    //       _faces = faces;
    //       _loadImage(imageFile);
    //     });
    //   }
    // }
    //
    // _loadImage(File file) async {
    //   final data = await file.readAsBytes();
    //   await decodeImageFromList(data).then(
    //         (value) => setState(() {
    //       _image = value;
    //       isLoading = false;
    //     }),
    //   );
    // }

    return
    //   Scaffold(
    //   body: isLoading
    //       ? Center(child: CircularProgressIndicator())
    //       : (_imageFile == null)
    //       ? Center(child: Text('No image selected'))
    //       : Center(
    //     child: FittedBox(
    //       child: SizedBox(
    //         width: _image.width.toDouble(),
    //         height: _image.height.toDouble(),
    //         child: CustomPaint(
    //           painter: FacePainter(_image, _faces),
    //         ),
    //       ),
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _getImageAndDetectFaces,
    //     tooltip: 'Pick Image',
    //     child: Icon(Icons.add_a_photo),
    //   ),
    // );
      Column(
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
                Row(
                  children: [
                    Text(
                      'Face',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    Text(
                      'ID',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold,color: primaryColor),
                    ),
                ],
                ),
                SizedBox(
                  width: 80.0,
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
        Image(image: AssetImage('assets/face_id.png'),),
        SizedBox(height: 80.0,),
        InkWell(child: Image(image: AssetImage('assets/get_started_container.png',),height: 56,width: 396,),onTap: () => Navigator.pushNamed(context, FaceRecognitionTwo.routeName),),
      ],
    );
  }
}
// class FacePainter extends CustomPainter {
//   final ui.Image image;
//   final List<Face> faces;
//   final List<Rect> rects = [];
//
//   FacePainter(this.image, this.faces) {
//     for (var i = 0; i < faces.length; i++) {
//       rects.add(faces[i].boundingBox);
//     }
//   }
//
//   @override
//   void paint(ui.Canvas canvas, ui.Size size) {
//     final Paint paint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 15.0
//       ..color = Colors.blue;
//
//     canvas.drawImage(image, Offset.zero, Paint());
//     for (var i = 0; i < faces.length; i++) {
//       canvas.drawRect(rects[i], paint);
//     }
//   }
//
//   @override
//   bool shouldRepaint(FacePainter oldDelegate) {
//     return image != oldDelegate.image || faces != oldDelegate.faces;
//   }
// }