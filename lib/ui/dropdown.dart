import 'package:flutter/material.dart';
class BuildDropDown extends StatefulWidget {


  @override
  _BuildDropDownState createState() => _BuildDropDownState();
}

class _BuildDropDownState extends State<BuildDropDown> {
  bool isSwitch = false;
  List<String> listitem = [
    "5",
    "10",
    "15",
    "20",
    "25",
    "30",
    "35",
    "40",
    "45",
    "50"
  ];
  String valueChoose = "5";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:35.0),
        child: DropdownButtonHideUnderline(
          child: Container(
            child: DropdownButton<String>(
              elevation: 0,
              iconSize: 35,
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              dropdownColor: Colors.white,
              items: listitem.isEmpty
                  ? Container()
                  : listitem.map((String valueItem) {
                return DropdownMenuItem<String>(
                  child: Text(
                    valueItem,
                    style: TextStyle(color: Colors.amber),
                  ),
                  value: valueItem,
                );
              }).toList(),
              value: valueChoose != null ? valueChoose : null,
              onChanged: (String newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
            ),
          ),
        ),
      ),
    );


  }
}
