import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DHC/globalVariables.dart';

class DaysAnalgesicsTable extends StatefulWidget {
  @override
  _DaysAnalgesicsTable createState() => _DaysAnalgesicsTable();
}

class _DaysAnalgesicsTable extends State<DaysAnalgesicsTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'Smertestillende',
          style: GoogleFonts.montserrat(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: DHCGray,
      ),
      backgroundColor: backgroundColorDHC,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.white, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                'Dato',
                style:
                    GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  'Smertestillende',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                )),
              ),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(
                    child: Text(
                  '22-11-2020',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                )),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                    child: Text(
                  'Ja',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                )),
              ),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                '23-11-2020',
                style:
                    GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  'Ja',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                )),
              ),
            ]),
            TableRow(children: [
              TableCell(
                  child: Center(
                      child: Text(
                '25-11-2020',
                style:
                    GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
              ))),
              TableCell(
                child: Center(
                    child: Text(
                  'Nej',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
                )),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class UnderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        Text(
          'Smertestillende',
          style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
