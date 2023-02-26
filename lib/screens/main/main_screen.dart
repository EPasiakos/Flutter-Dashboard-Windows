// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

import '../../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              //Menu column.
              //Default flex here is 1 and it will take 1/6 of the screen.
              // ignore: prefer_const_constructors
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
