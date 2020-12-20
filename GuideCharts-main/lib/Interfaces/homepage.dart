import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:interfaces/Interfaces/flutter_radar_chart.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Pollution, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;


  _generateData() {
    var data1 = [
      new Pollution(1, 'Postre', 30),

    ];
    var data2 = [
      new Pollution(2, 'Sopas', 100),

    ];
    var data3 = [
      new Pollution(3, 'Aperitivo', 200),

    ];
    var data4 = [
      new Pollution(4, 'Entrada', 100),

    ];
    var data5 = [
      new Pollution(5, 'Principal', 200),

    ];

    var piedata = [
      new Task('Lunes', 35.8, Color(0xff3366cc)),
      new Task('Martes', 8.3, Color(0xff990099)),
      new Task('Miercoles', 10.8, Color(0xff109618)),
      new Task('Jueves', 15.6, Color(0xfffdbe19)),
      new Task('Viernes', 10.0, Color(0xffff9900)),
      new Task('Sabado', 10.3, Color(0xffdc3912)),
      new Task('Domingo', 9.2, Color(0xffdc3980)),
    ];
  var pieCompletedata = [
    new Task('Sopas', 25, Color(0xfffdbe19)),
    new Task('Aperitivo', 15, Color(0xff3366cc)),
    new Task('Postre', 8, Color(0xff109618)),
    new Task('Acompañamiento', 2, Color(0xffff9900)),
  ];

    var linesalesdata = [
      new Sales(1, 45),
      new Sales(1, 56),
      new Sales(2, 32),
      new Sales(3, 60),
      new Sales(4, 10),
      new Sales(5, 50),
      new Sales(6, 45),
      new Sales(7, 56),
      new Sales(8, 32),
      new Sales(9, 60),
      new Sales(10, 10),
      new Sales(11, 50),
      new Sales(12, 12),
      new Sales(13, 52),
      new Sales(14, 33),
      new Sales(15, 60),
      new Sales(16, 75),
      new Sales(17, 50),
      new Sales(18, 12),
      new Sales(19, 56),
      new Sales(20, 13),
      new Sales(21, 60),
      new Sales(22, 0),
      new Sales(23, 50),
      new Sales(24, 45),
      new Sales(25, 123),
      new Sales(26, 32),
      new Sales(27, 60),
      new Sales(28, 10),
      new Sales(29, 45),
      new Sales(30, 45),
      new Sales(31, 56),

    ];


    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data5,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) => charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data:piedata,

        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );

  }
  bool darkMode = false;
  bool useSides = false;
  double numberOfFeatures = 3;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();

    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    const ticks = [5, 10, 15, 20, 25];
    var features = [
      "Aperitivo",
      "Principal",
      "Postres",
      "Sopas",
      "Entrada",
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
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(
                    icon: Icon(FontAwesomeIcons.checkCircle)
                ),
                Tab(
                    icon: Icon(FontAwesomeIcons.chartPie)
                ),
                Tab(
                    icon: Icon(FontAwesomeIcons.chartArea)
                ),
                Tab(
                    icon: Icon(FontAwesomeIcons.chartLine)
                ),
              ],
            ),
            title: Text('Estadisticas'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Cantidad de recetas del usuario',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: false,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Actividad del usuarios, según día',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(
                          child: charts.PieChart(
                              _seriesPieData,
                              animate: false,
                              animationDuration: Duration(seconds: 2),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification: charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Georgia',
                                      fontSize: 11),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 100,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition: charts.ArcLabelPosition.inside)
                                  ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Porcentaje de cada Categoria',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(
                          child: charts.PieChart(
                              _seriesPieData,
                              animate: false,
                              animationDuration: Duration(seconds: 2),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification: charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Georgia',
                                      fontSize: 11),
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
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Visitas a una receta Noviembre',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                              _seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: false,
                              animationDuration: Duration(seconds: 5),
                              /*behaviors: [
                                new charts.ChartTitle('Years',
                                    behaviorPosition: charts.BehaviorPosition.bottom,
                                    titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Sales',
                                    behaviorPosition: charts.BehaviorPosition.start,
                                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Departments',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification:charts.OutsideJustification.middleDrawArea,
                                )
                              ]*/
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),

                child: Container(
                  color: darkMode ? Colors.black : Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Mi recorrido general',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}