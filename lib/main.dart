import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:koora_app/screens/info_screen.dart';
import 'package:koora_app/screens/login_screen.dart';
import 'package:koora_app/screens/signup_screen.dart';
import 'package:koora_app/screens/start_screen.dart';

void main() {

//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
////    systemNavigationBarColor: Colors.blue, // navigation bar color
//    statusBarColor: Colors.transparent, // status bar color
//
//  ));


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: () {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartScreen(),
      );
    });
  }
}
