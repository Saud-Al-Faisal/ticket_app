import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 final List listItems = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Ticket")),
    const Center(child: Text("Person")),
  ];

  int currentIndex = 0;

 _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello App Bar"),
        centerTitle: true,
      ),
      body: listItems[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: "Home",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            ),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: "Search",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: "Ticket",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: "Person",
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
          ]),
    );
  }
}
