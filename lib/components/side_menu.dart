import 'package:dashboard/dbHelper/customers.dart';
import 'package:dashboard/screens/finance/finance.dart';
import 'package:dashboard/screens/schedule/schedule.dart';
import 'package:flutter/material.dart';

import '../screens/main/main_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/icons8-menu-64.png"),
            ),
            DrawerListTile(
              title: "Customers",
              svgSrc: "assets/icons/users-svgrepo-com.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Customers(),
                  ),
                );
              },
            ),
            DrawerListTile(
              title: "Schedule",
              svgSrc: "assets/icons/calendar.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Schedule(),
                  ),
                );
              },
            ),
            DrawerListTile(
              title: "Finance",
              svgSrc: "assets/icons/money.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Finance(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
