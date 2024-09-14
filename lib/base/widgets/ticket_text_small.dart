import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketTextSmall extends StatelessWidget {
  final String text;
  final TextAlign align;

  const TicketTextSmall(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: AppStyles.headingStyle4.copyWith(color: Colors.white));
  }
}
