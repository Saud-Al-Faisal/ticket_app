import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/widgets/all_ticket_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Application',
      theme: ThemeData(),
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all-tickets": (context) => const AllTicketList(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
