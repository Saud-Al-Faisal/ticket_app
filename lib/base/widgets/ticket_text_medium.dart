import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketTextMedium extends StatelessWidget {
  final String text;

  const TicketTextMedium({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyles.headingStyle3.copyWith(color: Colors.white));
  }
}
