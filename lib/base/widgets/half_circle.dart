import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HalfCircle extends StatelessWidget {
  final bool isRight;

  const HalfCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppStyles.primaryBackGroundColor,
              borderRadius: (isRight == true)
                  ? const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))
                  : const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)))),
    );
  }
}
