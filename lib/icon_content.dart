import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
const labelTextStyle =  TextStyle(color: Colors.white, fontSize: 25.0);

class IconContent extends StatelessWidget {
   IconContent({this.icon, required this.label});
   final IconData? icon;
   final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
          color: Colors.white,
        ),
        SizedBox(height: 10.0),
        Text(
          label,
          style: labelTextStyle,
          
        )
      ],
    );
  }
}
