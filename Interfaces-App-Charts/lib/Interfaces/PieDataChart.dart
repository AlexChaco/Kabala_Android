import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class PieDataChart extends StatefulWidget {
  final Widget child;

  PieDataChart({Key key, this.child}) : super(key: key);
  _PieDataChartState createState() => _PieDataChartState();
}

class _PieDataChartState extends State<PieDataChart> {
  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var piedata = [
      new Task('Plato Principal', 50, Color(0xff990099)),
      new Task('Sopas', 25, Color(0xfffdbe19)),
      new Task('Aperitivo', 15, Color(0xff3366cc)),
      new Task('Postre', 8, Color(0xff109618)),
      new Task('Acompañamiento', 2, Color(0xffff9900)),

    ];

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),

            title: Text('Porcentaje de cada Categoria'),
          ),
          body: (
                Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Time spent on daily tasks',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(
                          child: charts.PieChart(
                              _seriesPieData,
                              animate: false,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification: charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Georgia',
                                      fontSize: 9),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(arcRendererDecorators: [
                                new charts.ArcLabelDecorator(
                                    labelPosition: charts.ArcLabelPosition.outside)
                              ]))
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}
class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

