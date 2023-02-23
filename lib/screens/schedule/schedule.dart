// This page is the schedule page. It displays the schedule of the radio station
// in tabular form. The schedule is filled with mock data and displayed in
// the table. The user can add new schedule entries, edit existing entries and
// delete entries. The user can also search for a particular entry in the table.
// The user can also filter the table by date and time. The user can also sort
// the table by date and time. The user can also export the table to a CSV file.
// The user can also import a CSV file to the table.

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dashboard/controllers/constants.dart';
import 'package:dashboard/components/header.dart';
import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

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

class ScheduleTable {
  var date;
  var description;
  var presenter;
  var program;
  var time;

  ScheduleTable(
      {this.date, this.time, this.program, this.presenter, this.description});

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Date',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Time',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Program',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Presenter',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Description',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ], rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('2019-01-06')),
            DataCell(Text('00:00')),
            DataCell(Text('Πρωινό')),
            DataCell(Text('Γιώργος Καραμανλής')),
            DataCell(Text('Πρωινό')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('2019-01-06')),
            DataCell(Text('06:00')),
            DataCell(Text('Πρωινό')),
            DataCell(Text('Γιώργος Καραμανλής')),
            DataCell(Text('Πρωινό')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('2019-01-06')),
            DataCell(Text('09:00')),
            DataCell(Text('Πρωινό')),
            DataCell(Text('Γιώργος Καραμανλής')),
            DataCell(Text('Πρωινό')),
          ],
        ),
      ] // ignore: prefer_const_literals_to_create_immutables
          ),
    );
  }
}
