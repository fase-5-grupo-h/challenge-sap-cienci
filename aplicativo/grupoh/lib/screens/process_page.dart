import 'package:flutter/material.dart';
import 'package:grupoh/model/payment.dart';
import 'package:grupoh/utilities/aux_variables.dart';
import 'package:intl/intl.dart';
import 'package:grupoh/screens/generic_widgets/generic_app_bar.dart';

import 'generic_widgets/generic_list_view_item.dart';
import 'generic_widgets/generic_list_view_item_process.dart';

class ProcessmentPage extends StatefulWidget {
  @override
  _ProcessmentPageState createState() => _ProcessmentPageState();
}

class _ProcessmentPageState extends State<ProcessmentPage> {
  final List<Payment> pagList = [
    Payment(categoria: 'Imposto', valor: 4690.90, status: 'Em Processamento'),
    Payment(
        categoria: 'Fornecedor',
        valor: 5842.70,
        status: 'Aguardando Aprovação'),
    Payment(categoria: 'Imposto', valor: 985.75, status: 'Pago'),
    Payment(categoria: 'Imposto', valor: 4750.90, status: 'Em Processamento'),
    Payment(categoria: 'Fornecedor', valor: 27950.50, status: 'Reprovado'),
    Payment(categoria: 'Imposto', valor: 2487.75, status: 'Pago')
  ];

  Text getProcessText(String status) {
    var textStyle;

    if (status == 'Pago') {
      textStyle = TextStyle(color: Colors.green);
    } else if (status == 'Aguardando Aprovação') {
      textStyle = TextStyle(color: Colors.green);
    } else if (status == 'Reprovado') {
      textStyle = TextStyle(color: Colors.red[600]);
    } else {
      textStyle = TextStyle(color: Colors.grey);
    }

    return Text('Status: $status', style: textStyle);
  }

  Icon getIcon(String status) {
    if (status == 'Pago') {
      return Icon(
        Icons.check_circle_outlined,
        color: Colors.green,
        size: 60,
      );
    } else if (status == 'Aguardando Aprovação') {
      return const Icon(
        Icons.hourglass_empty_outlined,
        color: Colors.grey,
        size: 60,
      );
    } else if (status == 'Reprovado') {
      return Icon(
        Icons.dangerous_outlined,
        color: Colors.red[600],
        size: 60,
      );
    } else {
      return const Icon(
        Icons.hourglass_empty_outlined,
        color: Colors.grey,
        size: 60,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: GenericAppBar(title: 'Processamento'),
      ),
      body: Container(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: pagList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: GenericListViewItemProcess(
                header: pagList[index].categoria,
                value: pagList[index].valor,
                data: DateFormat.yMd('pt_BR').format(DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    (DateTime.now().day - index))),
                status: getProcessText(pagList[index].status),
                iconData: getIcon(
                    pagList[index].status), // DateTime.now().toString(),
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
    );
  }
}
