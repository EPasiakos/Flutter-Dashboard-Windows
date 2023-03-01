// ignore_for_file: prefer_const_constructors

import 'package:dashboard/controllers/constants.dart';
import 'package:dashboard/screens/dashboard/components/graph.dart';
import 'package:flutter/material.dart';
import '../../components/header.dart';
import 'components/statistics.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
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
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Insights",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: LineChartSample2(),
                            ),
                            Container(
                              height: 400,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      width: 2,
                                      color: primaryColor.withOpacity(0.15)),
                                ),
                                color: secondaryColor,
                              ),
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
