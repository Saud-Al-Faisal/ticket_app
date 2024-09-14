import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/ticket_text_medium.dart';
import 'package:ticket_app/base/widgets/ticket_text_small.dart';

class TicketColumnText extends StatelessWidget {
  final String topLabel;
  final String bottomLabel;
  final CrossAxisAlignment alignment;

  const TicketColumnText(
      {super.key,
      required this.topLabel,
      required this.bottomLabel,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TicketTextMedium(text: topLabel),
        const SizedBox(height: 3),
        TicketTextSmall(text: bottomLabel),
      ],
    );
  }
}
