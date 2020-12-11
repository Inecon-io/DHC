import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:DHC/Overview/population_data.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PrepMedicineGraph extends StatelessWidget {
  // Defining the data
  final List<HeadacheData> data = [
    HeadacheData(
        year: 1880,
        population: 50189209,
        barColor: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    HeadacheData(
        year: 1890,
        population: 62979766,
        barColor: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    HeadacheData(
        year: 1900,
        population: 76212168,
        barColor: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    HeadacheData(
        year: 1910,
        population: 92228496,
        barColor: charts.ColorUtil.fromDartColor(Colors.lightBlue)),
    HeadacheData(
        year: 1920,
        population: 106021537,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    HeadacheData(
        year: 1930,
        population: 123202624,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    HeadacheData(
        year: 1940,
        population: 132164569,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    HeadacheData(
        year: 1950,
        population: 151325798,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    HeadacheData(
        year: 1960,
        population: 179323175,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    HeadacheData(
        year: 1970,
        population: 203302031,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    HeadacheData(
        year: 1980,
        population: 226542199,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    HeadacheData(
        year: 1990,
        population: 248709873,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    HeadacheData(
        year: 2000,
        population: 281421906,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple)),
    HeadacheData(
        year: 2010,
        population: 307745538,
        barColor: charts.ColorUtil.fromDartColor(Colors.black)),
    HeadacheData(
        year: 2017,
        population: 323148586,
        barColor: charts.ColorUtil.fromDartColor(Colors.black)),
  ];

  _getSeriesData() {
    List<charts.Series<HeadacheData, String>> series = [
      charts.Series(
          id: "Population",
          data: data,
          domainFn: (HeadacheData series, _) => series.year.toString(),
          measureFn: (HeadacheData series, _) => series.population,
          colorFn: (HeadacheData series, _) => series.barColor)
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
