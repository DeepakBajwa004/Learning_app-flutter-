// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:learning_app/screens/signup/signup_screen.dart';
// import 'package:motion/motion.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: SignupScreen()
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learning_app/screens/signup/signup_screen.dart';
import 'package:motion/motion.dart';
import 'package:flutter/material.dart' hide Card;

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// Initialize the plugin to determine gyroscope availability.
  await Motion.instance.initialize();

  /// Globally set Motion's update interval to 60 frames per second.
  Motion.instance.setUpdateInterval(60.fps);

  /// ... and run the sample app.
  runApp( MotionDemoApp());
}

class MotionDemoApp extends StatelessWidget {
  MotionDemoApp({super.key});

  @override
  Widget build(BuildContext context) =>  GetMaterialApp(
    title: 'Motion Demo',
    debugShowCheckedModeBanner: false,
    home: SignupScreen(),
  );
}

