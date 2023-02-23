// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../controllers/constants.dart';
import 'chart.dart';
import 'info_card.dart';

class Statistics extends StatelessWidget {
  const Statistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Statistics",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          InfoCard(
            svgSrc: "assets/icons/document.svg",
            title: "Kratikes",
            amountOfFiles: "7",
            numOfFiles: 420,
          ),
          InfoCard(
            svgSrc: "assets/icons/document.svg",
            title: "Frontistiria",
            amountOfFiles: "12",
            numOfFiles: 720,
          ),
          InfoCard(
            svgSrc: "assets/icons/document.svg",
            title: "Praktoreia propo",
            amountOfFiles: "4",
            numOfFiles: 240,
          ),
          InfoCard(
            svgSrc: "assets/icons/document.svg",
            title: "Venzinadika",
            amountOfFiles: "3",
            numOfFiles: 180,
          ),
        ],
      ),
    );
  }
}
