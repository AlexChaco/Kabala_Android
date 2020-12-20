import 'package:flutter/material.dart';
import 'package:interfaces/Interfaces/flutter_radar_chart.dart';

class RChart extends StatefulWidget {
  const RChart({Key key}) : super(key: key);

  @override
  _RChartState createState() => _RChartState();
}

class _RChartState extends State<RChart> {
  bool darkMode = false;
  bool useSides = false;
  double numberOfFeatures = 3;

  @override
  Widget build(BuildContext context) {
    const ticks = [5, 10, 15, 20, 25];
    var features = [
      "Aperitivo",
      "Plato principal",
      "Postres",
      "Sopas",
      "Acompañamiento",
      "Bebidas",
    ];
    var data = [
      [10, 20, 24, 5, 15, 15],
      [15, 5, 5, 15, 25, 10]
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data = data
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Radar Chart Example'),
      ),
      body: Container(
        color: darkMode ? Colors.black : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  darkMode
                      ? Text(
                    'Light mode',
                    style: TextStyle(color: Colors.white),
                  )
                      : Text(
                    'Dark mode',
                    style: TextStyle(color: Colors.black),
                  ),
                  Switch(
                    value: this.darkMode,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  useSides
                      ? Text(
                    'Polygon border',
                    style: darkMode
                        ? TextStyle(color: Colors.white)
                        : TextStyle(color: Colors.black),
                  )
                      : Text(
                    'Circular border',
                    style: darkMode
                        ? TextStyle(color: Colors.white)
                        : TextStyle(color: Colors.black),
                  ),
                  Switch(
                    value: this.useSides,
                    onChanged: (value) {
                      setState(() {
                        useSides = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Number of features',
                    style: TextStyle(
                        color: darkMode ? Colors.white : Colors.black),
                  ),
                  Expanded(
                    child: Slider(
                      value: this.numberOfFeatures,
                      min: 3,
                      max: 6,
                      divisions: 3,
                      onChanged: (value) {
                        setState(() {
                          numberOfFeatures = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: darkMode
                  ? RadarChart.dark(
                ticks: ticks,
                features: features,
                data: data,
                reverseAxis: true,
                useSides: useSides,
              )
                  : RadarChart.light(
                ticks: ticks,
                features: features,
                data: data,
                reverseAxis: true,
                useSides: useSides,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
