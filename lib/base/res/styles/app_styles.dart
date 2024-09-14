import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color primaryBackGroundColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);

  static Color ticketTopColor = const Color(0xFF526799);
  static Color ticketBottomColor = const Color(0XFFF37B67);

  static final TextStyle textStyle =
      TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle headingStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static final TextStyle headingStyle2 =
      TextStyle(color: textColor, fontSize: 21, fontWeight: FontWeight.bold);

  static const TextStyle headingStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static const TextStyle headingStyle4 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
