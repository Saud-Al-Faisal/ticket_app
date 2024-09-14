import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../data/ticket_data.dart';

class AllTicketList extends StatelessWidget {
  const AllTicketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList
                  .map((ticket) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TicketView(
                        ticket: ticket,
                        fullScreen: true,
                      )))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
