import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day14 extends StatefulWidget {
  @override
  _Day14State createState() => _Day14State();
}

class _Day14State extends State<Day14> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DataTable Demo'),primary: true),
      body: DataTable(
        rows:<DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('data1'),onTap:onTap),
              DataCell(Text('data2'),onTap:onTap),
              DataCell(Text('data3'),onTap:onTap),
            ],
            ),
             DataRow(
            cells: <DataCell>[
              DataCell(Text('data1'),onTap:onTap),
              DataCell(Text('data2'),onTap:onTap),
              DataCell(Text('data3'),onTap:onTap),
            ],
            ),
            DataRow(
            cells: <DataCell>[
              DataCell(Text('data1'),onTap:onTap),
              DataCell(Text('data2'),onTap:onTap),
              DataCell(Text('data3'),onTap:onTap),
            ],
            ),
            DataRow(
            cells: <DataCell>[
              DataCell(Text('data1'),onTap:onTap),
              DataCell(Text('data2'),onTap:onTap),
              DataCell(Text('data3'),onTap:onTap),
            ],
            ),
            DataRow(
            cells: <DataCell>[
              DataCell(Text('data1'),onTap:onTap),
              DataCell(Text('data2'),onTap:onTap),
              DataCell(Text('data3'),onTap:onTap),
            ],
            ),
        ],
        columns: <DataColumn>[
          DataColumn(label: Text('DataColum1')),
          DataColumn(label: Text('DataColum2')),
          DataColumn(label: Text('DataColum3')),
        ],
        )
    );
  }
  void onTap() {
    print('data onTap');
  }
}