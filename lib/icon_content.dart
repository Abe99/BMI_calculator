import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabelTextStyle,
          
        )
      ],
    );
  }
}
