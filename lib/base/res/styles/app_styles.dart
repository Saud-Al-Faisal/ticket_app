import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color primaryBackGroundColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static const TextStyle headingStyle1 = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500
  );
  static final TextStyle headingStyle2 = TextStyle(
      color: textColor,
      fontSize: 26,
      fontWeight: FontWeight.bold
  );
}
