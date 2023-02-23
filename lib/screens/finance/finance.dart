import 'package:dashboard/controllers/constants.dart';
import 'package:dashboard/components/header.dart';
import 'package:flutter/material.dart';

// a black page for now

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
