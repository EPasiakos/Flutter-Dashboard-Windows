import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            //Menu column.
            //Default flex here is 1 and it will take 1/6 of the screen.
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
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 20,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
