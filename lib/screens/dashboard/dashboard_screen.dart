// ignore_for_file: prefer_const_constructors

import 'package:dashboard/controllers/constants.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/dbHelper/customers.dart';
import '../../components/header.dart';
import 'components/statistics.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 2,
                                color: primaryColor.withOpacity(0.15)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pelatologio",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            ElevatedButton.icon(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding * 1.5,
                                  vertical: defaultPadding,
                                ),
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text("Add new"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: Statistics(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
