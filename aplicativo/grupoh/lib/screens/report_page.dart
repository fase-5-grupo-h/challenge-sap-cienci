import 'package:flutter/material.dart';
import 'package:grupoh/model/payment.dart';
import 'package:grupoh/utilities/aux_variables.dart';
import 'package:grupoh/utilities/util.dart';

import 'generic_widgets/generic_app_bar.dart';
import 'graph_widget.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final List<Payment> pagList = pagListExtended;
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: GenericAppBar(title: 'Relatório'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          5.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300.0,
                child: GraphWidget(),
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: ListView.separated(
                  itemCount: pagList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(
                            '${pagList[index].categoria} - ${Util.currencyFormatter.format(pagList[index].valor)}'),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: double.infinity,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
