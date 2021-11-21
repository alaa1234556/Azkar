import 'package:animated_widgets/animated_widgets.dart';
import 'package:azkar/config/constanst.dart';
import 'package:azkar/util/util.dart';

import 'package:flutter/material.dart';

import 'mainhome.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Util.go_screen_animated(context,MainHome());
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constant.color_main,
      body: Container(
        alignment: Alignment.center,
        child: ScaleAnimatedWidget.tween(
          duration: Duration(milliseconds: 600),
          scaleEnabled:1 ,
            scaleDisabled: 0.1,
            child: Image.asset(Constant.image_logo),
        ),
      ),
    );
  }
}
