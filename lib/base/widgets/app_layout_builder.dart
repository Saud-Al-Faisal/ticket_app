import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int dividerNumber;
  final double width;

  const AppLayoutBuilder({super.key, required this.dividerNumber, this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final int noOfWidgets =
          (constraints.constrainWidth() / dividerNumber).floor();
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(noOfWidgets, (index) => SizedBox(
          width: width,
          height: 1,
          child: const DecoratedBox(decoration: BoxDecoration(
            color: Colors.white
          )),
        )),
      );
    });
  }
}
