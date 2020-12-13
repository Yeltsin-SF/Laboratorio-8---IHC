import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab_08/generated/l10n.dart';

class ChartsPharmacy extends StatefulWidget {
  final Widget child;

  ChartsPharmacy({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ChartsPharmacy> {
  List<charts.Series<Pollution, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;
  List<charts.Series<OrdinalSales, String>> _createSampleData;
  List<charts.Series<LinearSales, int>> _seriesLineData1;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'Inkafarma', 500),
      new Pollution(1980, 'MiFarma', 300),
      new Pollution(1980, 'Arcangel', 200),
      new Pollution(1980, 'Otros', 100),
    ];

    var piedata = [
      new Task('Inkafarma', 53, Color(0xff3366cc)),
      new Task('MiFarma', 24, Color(0xff990099)),
      new Task('Arcangel', 12, Color(0xff109618)),
      new Task('Otros', 6, Color(0xfff44336)),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];
    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];
    var data = [
      new OrdinalSales('Otros', 1000),
      new OrdinalSales('Arcangel', 2000),
      new OrdinalSales('MiFarma', 3000),
      new OrdinalSales('Inkafarma', 4000),
    ];
    var myFakeDesktopData = [
      new LinearSales(52, 0.75, 14.0),
    ];
    var myFakeTabletData = [
      new LinearSales(45, 0.3, 18.0),
    ];
    var myFakeMobileData = [
      new LinearSales(56, 0.8, 17.0),
    ];
    var myFakeChromebookData = [
      new LinearSales(25, 0.6, 13.0),
    ];
    var myFakeHomeData = [
      new LinearSales(34, 0.5, 15.0),
    ];
    var myFakeOtherData = [
      new LinearSales(10, 0.25, 15.0),
      new LinearSales(12, 0.075, 14.0),
      new LinearSales(13, 0.225, 15.0),
      new LinearSales(16, 0.03, 14.0),
      new LinearSales(24, 0.04, 13.0),
      new LinearSales(37, 0.1, 14.5),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff26a69a)),
      ), 
    );

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

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _createSampleData.add(
      charts.Series(
        id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.farmacias,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          labelAccessorFn: (OrdinalSales sales, _) =>
              '${sales.farmacias}: \$${sales.sales.toString()}'),
    );
    _seriesLineData1.add(
      charts.Series(
        id: 'Alcohol',
          colorFn: (LinearSales sales, _) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeDesktopData
      ),
    );
    _seriesLineData1.add(
      charts.Series(
        id: 'Gel Antibacterial',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.red.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeTabletData
      ),
    );
    _seriesLineData1.add(
      charts.Series(
        id: 'Mascarillas',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.green.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeMobileData
      ),
    );
    _seriesLineData1.add(
      charts.Series(
        id: 'Paracetamol',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.purple.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeChromebookData
      ),
    );
    _seriesLineData1.add(
      charts.Series(
        id: 'Vitaminas',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.indigo.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeHomeData
      ),
    );
    _seriesLineData1.add(
      charts.Series(
        id: 'Otros',
          colorFn: (LinearSales sales, _) =>
              charts.MaterialPalette.gray.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.revenueShare,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          data: myFakeOtherData
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _createSampleData = List<charts.Series<OrdinalSales, String>>();
    _seriesLineData1 = List<charts.Series<LinearSales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff263238),
            bottom: TabBar(
              indicatorColor: Color(0xff01579b),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
                Tab(icon: Icon(FontAwesomeIcons.batteryEmpty)),
                Tab(icon: Icon(FontAwesomeIcons.circle)),
              ],
            ),
            title: Text(S.of(context).simpleText15,),
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
                            S.of(context).simpleText16,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
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
                            S.of(context).simpleText17,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 25,),
                        Expanded(
                          child: charts.PieChart(
                            _seriesPieData,
                            animate: true,
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
                            S.of(context).simpleText18,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                            _seriesLineData,
                            defaultRenderer: new charts.LineRendererConfig(
                                includeArea: true, stacked: true),
                            animate: true,
                            animationDuration: Duration(seconds: 5),
                            behaviors: [
        new charts.ChartTitle('Años',
            behaviorPosition: charts.BehaviorPosition.bottom,
            titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
        new charts.ChartTitle('Ventas',
            behaviorPosition: charts.BehaviorPosition.start,
            titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
        new charts.ChartTitle('Farmacias',
            behaviorPosition: charts.BehaviorPosition.end,
            titleOutsideJustification:charts.OutsideJustification.middleDrawArea,
            )   
      ]
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
                            S.of(context).simpleText19,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _createSampleData,
                            animate: true,
                            vertical: false,
                            barRendererDecorator: new charts.BarLabelDecorator<String>(),
                            domainAxis: new charts.OrdinalAxisSpec(renderSpec: new charts.NoneRenderSpec()),
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
                            S.of(context).simpleText20,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.ScatterPlotChart(
                            _seriesLineData1,
                            primaryMeasureAxis: new charts.BucketingAxisSpec(
                              threshold: 0.1,
                              tickProviderSpec: new charts.BucketingNumericTickProviderSpec(desiredMaxTickCount: 3)),
                              behaviors: [
                                new charts.SeriesLegend(position: charts.BehaviorPosition.end),
                              ],
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

class OrdinalSales {
  final String farmacias;
  final int sales;

  OrdinalSales(this.farmacias, this.sales);
}

class LinearSales {
  final int year;
  final double revenueShare;
  final double radius;

  LinearSales(this.year, this.revenueShare, this.radius);
}