import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:DHC/Overview/sales_data.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:shared_preferences/shared_preferences.dart';

class DaysClusterHeadacheGraph extends StatelessWidget {
  // Defining the data
  final data = [
    new HoursHeadache(0, 4),
    new HoursHeadache(1, 1),
    new HoursHeadache(2, 5),
    new HoursHeadache(3, 0),
    new HoursHeadache(4, 1),
    new HoursHeadache(5, 3),
    new HoursHeadache(6, 4),
    new HoursHeadache(7, 5),
    new HoursHeadache(8, 1),
    new HoursHeadache(9, 7),
    new HoursHeadache(10, 20),
    new HoursHeadache(11, 2),
    new HoursHeadache(12, 18),
    new HoursHeadache(13, 5),
    new HoursHeadache(14, 24),
    new HoursHeadache(15, 0),
    new HoursHeadache(16, 9),
    new HoursHeadache(17, 7),
    new HoursHeadache(18, 17),
    new HoursHeadache(19, 22),
  ];

  _getSeriesData() {
    List<charts.Series<HoursHeadache, int>> series = [
      charts.Series(
          id: "Sales",
          data: data,
          domainFn: (HoursHeadache series, _) => series.hours,
          measureFn: (HoursHeadache series, _) => series.day,
          colorFn: (HoursHeadache series, _) =>
              charts.MaterialPalette.blue.shadeDefault)
    ];
    return series;
  }

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
      body: Center(
        child: Container(
          height: 400,
          padding: EdgeInsets.all(20),
          child: Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Population of U.S. over the years",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: new charts.LineChart(
                      _getSeriesData(),
                      animate: true,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
