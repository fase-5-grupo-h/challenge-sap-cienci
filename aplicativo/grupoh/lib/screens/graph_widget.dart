import 'package:flutter/material.dart';
import 'package:grupoh/model/payment.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:grupoh/utilities/aux_variables.dart';
import 'package:grupoh/utilities/util.dart';

/*class GraphWidget extends StatelessWidget {
  //GraphWidget({required this.pagList});



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: charts.BarChart(
        seriesList,
        animate: false,
      ),
    );
  }
}*/

class GraphWidget extends StatefulWidget {
  @override
  _GraphWidgetState createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  //final List<Payment> pagList = pagListExtended;

  List<charts.Series<Payment, String>> seriesList = [];

  void _makeData() {
    Map<String, double> pagValues = <String, double>{
      'Imposto': 0.0,
      'Fornecedor': 0.0,
      'Consumo': 0.0,
    };
    for (Payment item in pagListExtended) {
      pagValues.update(item.categoria, (value) => value + item.valor);
    }

    List<Payment> totalValues = [];

    for (var key in pagValues.keys) {
      totalValues.add(
        Payment(
          categoria: key,
          valor: pagValues[key]!.toDouble(),
        ),
      );
    }

    seriesList.add(
      charts.Series<Payment, String>(
        id: 'Pagamentos',
        data: totalValues,
        domainFn: (Payment pay, _) => pay.categoria,
        measureFn: (Payment pay, _) => pay.valor,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        labelAccessorFn: (Payment pay, _) =>
            Util.currencyFormatter.format(pay.valor),
      ),
    );
  }

  @override
  void initState() {
    _makeData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: charts.BarChart(
        seriesList,
        animate: false,
        barRendererDecorator: charts.BarLabelDecorator(
          insideLabelStyleSpec: const charts.TextStyleSpec(
            color: charts.MaterialPalette.black,
          ),
          outsideLabelStyleSpec: const charts.TextStyleSpec(
            color: charts.MaterialPalette.white,
            fontSize: 8,
          ),
        ),
        domainAxis: const charts.OrdinalAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
            labelStyle: charts.TextStyleSpec(
              color: charts.MaterialPalette.white,
            ),
          ),
        ),
        primaryMeasureAxis: const charts.NumericAxisSpec(
          renderSpec: charts.GridlineRendererSpec(
            labelStyle: charts.TextStyleSpec(
              color: charts.MaterialPalette.white,
            ),
          ),
        ),
      ),
    );
  }
}
