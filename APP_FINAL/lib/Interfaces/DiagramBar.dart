import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DiagramBar extends StatefulWidget {
  DiagramBar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DiagramBarState createState() => _DiagramBarState();
}

class _DiagramBarState extends State<DiagramBar> {
  static var chartdisplay;
  void initState() {
    setState(() {
      var data = [
        addcharts("Aperitivos", 25),
        addcharts("Principales", 33),
        addcharts("Postres", 21),
        addcharts("Sopas", 37),
        addcharts("Acompañamiento", 15),
        addcharts("Bebidas", 28),
      ];
      var series = [
        charts.Series(
          domainFn: (addcharts addcharts, _) => addcharts.label,
          measureFn: (addcharts addcharts, _) => addcharts.value,
          id: 'addcharts',
          data: data,
        ),
      ];

      chartdisplay = charts.BarChart(
        series,
        animationDuration: Duration(microseconds: 2000),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: new Container(
          height: MediaQuery.of(context).size.height * 0.35,
          child: chartdisplay,
        ),
      ),
    );
  }
}

class addcharts {
  final String label;
  final int value;
  addcharts(this.label, this.value);
}
