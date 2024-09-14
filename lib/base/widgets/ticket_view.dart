import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/half_circle.dart';
import 'package:ticket_app/base/widgets/ticket_column_text.dart';
import 'package:ticket_app/base/widgets/ticket_text_medium.dart';
import 'package:ticket_app/base/widgets/ticket_text_small.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketTopColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketTextMedium(text: ticket['from']['code']),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(dividerNumber: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white)),
                          ),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TicketTextMedium(text: ticket['to']['code']),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TicketTextSmall(text: ticket['from']['name']),
                      ),
                      Expanded(child: Container()),
                      TicketTextSmall(text: ticket['flying_time']),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketTextSmall(
                            text: ticket['to']['name'], align: TextAlign.end),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketBottomColor,
              child: const Row(
                children: [
                  HalfCircle(isRight: true),
                  Expanded(
                      child: AppLayoutBuilder(dividerNumber: 16, width: 5)),
                  HalfCircle(isRight: false),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBottomColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketColumnText(
                          topLabel: ticket['date'],
                          bottomLabel: "Date",
                          alignment: CrossAxisAlignment.start),
                      Expanded(child: Container()),
                      TicketColumnText(
                          topLabel: ticket['departure_time'],
                          bottomLabel: "Departure Time",
                          alignment: CrossAxisAlignment.center),
                      Expanded(child: Container()),
                      TicketColumnText(
                          topLabel: ticket['number'].toString(),
                          bottomLabel: "Number",
                          alignment: CrossAxisAlignment.end),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
