import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class BuildSwitch extends StatefulWidget {


  @override
  State<BuildSwitch> createState() => _BuildSwitchState();
}

class _BuildSwitchState extends State<BuildSwitch> {
  bool isSwitch=false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(value: isSwitch,
        activeColor: Colors.amber,
        onToggle:(value){
setState(() {
  isSwitch=value;
});
        }
        );
  }
}
