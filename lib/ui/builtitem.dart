import 'package:azkar/util/util.dart';
import 'package:flutter/material.dart';
class BuildMenuItem extends StatelessWidget {
  String text;
  IconData icon;
  dynamic screenname;
  BuildMenuItem(this.text,this.icon,this.screenname){

  }
  final color=Colors.amber;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: color,),
      title: Text(text,style: TextStyle(color: color),),
      onTap: (){
        Util.go_screen(context, screenname);
      },
    );
  }
}
