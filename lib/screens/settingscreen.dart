import 'package:azkar/config/constanst.dart';
import 'package:azkar/ui/builtswitch.dart';
import 'package:azkar/ui/divider.dart';
import 'package:azkar/ui/dropdown.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.color_main,
      body: Padding(
        padding: const EdgeInsets.only(right: 14.0),
        child: Container(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Center(
                    child: Image.asset(
                  Constant.image_logo,
                  width: 180,
                  height: 180,
                )),
              BuildDivider(),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "تفعيل الأهتزاز في التطبيق",
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                    SizedBox(width: 175),
                    BuildSwitch(),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "تفعيل الانتقال الرئيسي في الاذكار بدلا من الأفقي",
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                    SizedBox(width: 20),
                    BuildSwitch(),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "حجم الخط",
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                    SizedBox(width: 175),
                    BuildDropDown(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
