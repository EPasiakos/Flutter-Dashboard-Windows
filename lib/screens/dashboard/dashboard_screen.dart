// ignore_for_file: prefer_const_constructors

import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [Header()],
        ),
      ),
    );
  }
}
