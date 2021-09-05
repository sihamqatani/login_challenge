import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_challenge/modules/sign_up/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        focusColor: Colors.red[300],
        primaryColor: Colors.red[300],
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.grey),
            backwardsCompatibility: false,
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            )),
      ),
      home: SignUp(),
    );
  }
}
