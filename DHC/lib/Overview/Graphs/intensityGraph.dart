import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:DHC/Overview/population_data.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:shared_preferences/shared_preferences.dart';

class IntensityGraph extends StatelessWidget {
  // Defining the data
  final List<PopulationData> data = [
    PopulationData(
        year: 21112020,
        population: 2,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 22112020,
        population: 5,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 23112020,
        population: 1,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 24112020,
        population: 7,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 25112020,
        population: 9,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 26112020,
        population: 3,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 27112020,
        population: 5,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 28112020,
        population: 7,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
    PopulationData(
        year: 29112020,
        population: 8,
        barColor: charts.ColorUtil.fromDartColor(DHCGreen)),
  ];

  _getSeriesData() {
    List<charts.Series<PopulationData, String>> series = [
      charts.Series(
          id: "Population",
          data: data,
          domainFn: (PopulationData series, _) => series.year.toString(),
          measureFn: (PopulationData series, _) => series.population,
          colorFn: (PopulationData series, _) => series.barColor)
    ];
    return series;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Intensitet',
          style: GoogleFonts.montserrat(fontSize: 25, color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,

          //change your color here
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
                    "Intensitet",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: charts.BarChart(
                      _getSeriesData(),
                      animate: true,
                      domainAxis: charts.OrdinalAxisSpec(
                          renderSpec:
                              charts.SmallTickRendererSpec(labelRotation: 60)),
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
