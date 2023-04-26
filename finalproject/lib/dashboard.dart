import 'package:flutter/material.dart';
import 'package:finalproject/first.dart';
import 'package:finalproject/second.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("TASK HERO"),
        ),
        body: Center(
        child: SingleChildScrollView(
          child:SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child: DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Sr. No',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Title',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Description',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Date',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Image',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Status',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  '      ',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Sarah')),
                  DataCell(Text('19')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(

                cells: <DataCell>[
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                  DataCell(Text('Student')),
                ],
              ),

            ],

          )
        ),
    )
        )
    );
  }
}
