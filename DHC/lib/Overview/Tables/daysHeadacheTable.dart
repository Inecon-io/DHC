import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:DHC/globalVariables.dart';

class DaysHeadacheTable extends StatefulWidget {
  @override
  _DaysHeadacheTable createState() => _DaysHeadacheTable();
}

class _DaysHeadacheTable extends State<DaysHeadacheTable> {
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
        padding: const EdgeInsets.all(20.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Datoer',
                style:
                    GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  'Hovedpine',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                )),
              ),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: DHCGreen,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Value',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ))),
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: DHCGreen,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Value',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: DHCGreen,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ValueaaValueaaValueaaValueaaValueaaValueaaValueaa',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ))),
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: DHCGreen,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ValueaaValueaaValueaaValueaaValueaaValueaaValueaa',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ))),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: DHCGreen,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ValueaaValueaaValueaaValueaaValueaaValueaaValueaa',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ))),
              TableCell(
                  child: Center(
                      child: Container(
                decoration: BoxDecoration(
                    color: DHCGreen,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ValueaaValueaaValueaaValueaaValueaaValueaaValueaa',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                ),
              ))),
            ])
          ],
        ),
      ),
    );
  }
}
