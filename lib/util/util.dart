import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Util {
  static void go_screen(context, screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
  static void go_screen_animated(context,screen,{transition = PageTransitionType.fade,duration=700}){
Navigator.push(context,PageTransition(child:screen ,
type: transition,
duration:Duration(milliseconds:duration)));

  }
}
