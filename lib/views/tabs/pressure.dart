import 'package:flutter/material.dart';
import 'package:weather_predict/schema/pressure.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PressureTab extends StatefulWidget {
  const PressureTab({Key? key}) : super(key: key);

  @override
  _PressureTabState createState() => _PressureTabState();
}

class _PressureTabState extends State<PressureTab> {
  final data = [
    PreesureVsTemperature(pressure: 1001.09, temperature: 20),
    PreesureVsTemperature(pressure: 1010.09, temperature: 21),
    PreesureVsTemperature(pressure: 1023.09, temperature: 20),
    PreesureVsTemperature(pressure: 1200.09, temperature: 22),
    PreesureVsTemperature(pressure: 1034.09, temperature: 20),
    PreesureVsTemperature(pressure: 1110.09, temperature: 23),
    PreesureVsTemperature(pressure: 1349.09, temperature: 20),
    PreesureVsTemperature(pressure: 979.09, temperature: 24),
    PreesureVsTemperature(pressure: 1098.09, temperature: 20),
    PreesureVsTemperature(pressure: 960.09, temperature: 26),
    PreesureVsTemperature(pressure: 1008.09, temperature: 20),
    PreesureVsTemperature(pressure: 980.09, temperature: 28),
    PreesureVsTemperature(pressure: 897.09, temperature: 20),
    PreesureVsTemperature(pressure: 1100.09, temperature: 30),
    PreesureVsTemperature(pressure: 1080.09, temperature: 20),
    PreesureVsTemperature(pressure: 1500.09, temperature: 35),
    PreesureVsTemperature(pressure: 1001.9, temperature: 20),
    PreesureVsTemperature(pressure: 900.09, temperature: 36),
  ];

  _getSeriesData() {
    List<charts.Series<PreesureVsTemperature, num>> series = [
      charts.Series(
        id: "Grades",
        data: data,
        labelAccessorFn: (PreesureVsTemperature row, _) =>
            '${row.pressure}: ${row.temperature}',
        domainFn: (PreesureVsTemperature prop, _) => prop.pressure!,
        measureFn: (PreesureVsTemperature prop, _) => prop.temperature,
      )
    ];
    return series;
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Container(
        color: Colors.transparent,
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 650,
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          "Pressure Vs Temperature for better understanding",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 580,
                          child: charts.LineChart(
                            _getSeriesData(),
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 650,
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          "Pressure Vs Temperature for better understanding",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 580,
                          child: charts.LineChart(
                            _getSeriesData(),
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 650,
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          "Pressure Vs Temperature for better understanding",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 580,
                          child: charts.LineChart(
                            _getSeriesData(),
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
