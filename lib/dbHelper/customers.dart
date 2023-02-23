// This sqflite database is used to store the data of the customers.
// The database is created in the following directory:
// C:\Users\username\AppData\Local\Temp\flutter-dashboard-windows\flutter-dashboard-windows.db
//
// The database has the following tables: 'customers'.
//
// The 'customers' table has the following columns: 'id', 'name', 'address', 'postcode',
// 'telephone', 'email', 'initialDuration', 'status', 'startDate', 'endDate', 'price',
// 'paymentMethod', 'paymentDate', 'paymentStatus', 'spotId', 'spotDuration', 'domain'.
//
// The 'customers' table has the following data types: 'INTEGER', 'TEXT', 'TEXT', 'TEXT',
// 'TEXT', 'TEXT', 'INTEGER', 'TEXT', 'TEXT', 'TEXT', 'REAL', 'TEXT', 'TEXT', 'TEXT', 'INTEGER',
// 'INTEGER', 'TEXT'.
//
// The 'customers' table has the following constraints: 'PRIMARY KEY', 'NOT NULL', 'NOT NULL',

// ignore_for_file: prefer_const_constructors

import 'package:dashboard/components/header.dart';
import 'package:dashboard/components/side_menu.dart';
import 'package:dashboard/controllers/constants.dart';
import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    // Datatable widget is used to display the list of customers from the sqflite
    // database in a table format.
    // ignore: avoid_unnecessary_containers
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: const SideMenu(),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Header(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Name',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Address',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Postcode',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Telephone',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Email',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Initial Duration',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Status',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Start Date',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'End Date',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Price',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Payment Method',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Payment Date',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Payment Status',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Spot ID',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Spot Duration',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Domain',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ], rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('John')),
                          DataCell(Text('High Street')),
                          DataCell(Text('AB1 2CD')),
                          DataCell(Text('01234 567890')),
                          DataCell(Text('test@testgmail.com')),
                          DataCell(Text('12')),
                          DataCell(Text('Active')),
                          DataCell(Text('01/01/2021')),
                          DataCell(Text('01/01/2022')),
                          DataCell(Text('£12.00')),
                          DataCell(Text('Cash')),
                          DataCell(Text('01/01/2021')),
                          DataCell(Text('Paid')),
                          DataCell(Text('1')),
                          DataCell(Text('36')),
                          DataCell(Text('sales')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Mary')),
                          DataCell(Text('High Street')),
                          DataCell(Text('AB1 2CD')),
                          DataCell(Text('01234 567890')),
                          DataCell(Text('test2@testgmail.com')),
                          DataCell(Text('12')),
                          DataCell(Text('Active')),
                          DataCell(Text('01/01/2021')),
                          DataCell(Text('01/01/2022')),
                          DataCell(Text('£12.00')),
                          DataCell(Text('Cash')),
                          DataCell(Text('01/01/2021')),
                          DataCell(Text('Paid')),
                          DataCell(Text('2')),
                          DataCell(Text('36')),
                          DataCell(Text('sales')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('July')),
                          DataCell(Text('High Street')),
                          DataCell(Text('AB1 2CD')),
                          DataCell(Text('01234 567890')),
                          DataCell(Text('test3@testgmail.com')),
                          DataCell(Text('12')),
                          DataCell(Text('Active')),
                          DataCell(Text('01/01/2021')),
                          DataCell(Text('01/01/2022')),
                          DataCell(Text('£12.00')),
                          DataCell(Text('Cash')),
                          DataCell(Text('01/01/2021')),
                          DataCell(Text('Paid')),
                          DataCell(Text('3')),
                          DataCell(Text('36')),
                          DataCell(Text('sales')),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
