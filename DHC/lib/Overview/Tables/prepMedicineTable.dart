import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:DHC/globalVariables.dart';

class PrepMedicineTable extends StatefulWidget {
  @override
  _PrepMedicineTable createState() => _PrepMedicineTable();
}

class _PrepMedicineTable extends State<PrepMedicineTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: DHCGray,
      ),
      backgroundColor: backgroundColorDHC,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Title'))),
              TableCell(
                child: Center(child: Text('Title')),
              ),
              TableCell(child: Center(child: Text('Title'))),
              TableCell(child: Center(child: Text('Title'))),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Value')),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('Value')),
              ),
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ValueaaValueaaValueaaValueaaValueaaValueaaValueaa',
                  style: TextStyle(color: Colors.yellow),
                ),
              ))),
              TableCell(
                child: Center(child: Text('Value')),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Value'))),
              TableCell(
                child: Center(child: Text('Value')),
              ),
              TableCell(child: Center(child: Text('Value'))),
              TableCell(child: Center(child: Text('Value'))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Value'))),
              TableCell(
                child: Center(child: Text('Value')),
              ),
              TableCell(child: Center(child: Text('Value'))),
              TableCell(child: Center(child: Text('Value'))),
            ])
          ],
        ),
      ),
    );
  }
}
