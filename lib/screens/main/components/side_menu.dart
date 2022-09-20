import 'package:flutter/material.dart';

import '../main_screen.dart';

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
              press: () {},
            ),
            DrawerListTile(
              title: "Schedule",
              svgSrc: "assets/icons/calendar.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Income",
              svgSrc: "assets/icons/money.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Spendings",
              svgSrc: "assets/icons/money.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
