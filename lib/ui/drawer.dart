import 'package:azkar/config/constanst.dart';
import 'package:azkar/screens/elseb7a.dart';
import 'package:azkar/screens/settingscreen.dart';
import 'package:azkar/ui/divider.dart';
import 'package:flutter/material.dart';
import 'builtitem.dart';

class BuildDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Constant.color_main,
        child: ListView(
          children: [
            SizedBox(height: 30),
            Image.asset(
              Constant.image_logo,
              height: 150,
              width: 150,
            ),
            SizedBox(height: 30),
            BuildDivider(),
            SizedBox(height: 25),
            BuildMenuItem(
              "الصفحه الرئيسيه",
              Icons.home,
              Container(),
            ),
            SizedBox(height: 15),
            BuildMenuItem(
              "المسبحه",
              Icons.cached,
              Elsebha(),
            ),
            SizedBox(height: 15),
            BuildMenuItem(
              "المفضله",
              Icons.favorite,
              Container(),
            ),
            SizedBox(height: 15),
            BuildMenuItem(
              "الاعدادات",
              Icons.settings,
              SettingScreen(),
            )
          ],
        ),
      ),
    );
  }
}
