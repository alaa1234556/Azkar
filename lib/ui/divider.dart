import 'package:flutter/material.dart';
class BuildDivider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Divider(
        thickness: 3,
        height: 1,
        color: Colors.amber,
      ),
    );
  }
}
