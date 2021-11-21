import 'package:azkar/screens/splashscreen.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(Azkar());
}

class Azkar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "azkar",
      home: SplashScreen(),
    );
  }
}
