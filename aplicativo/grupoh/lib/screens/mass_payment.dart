import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:grupoh/model/payment.dart';
import 'generic_widgets/generic_list_view_item.dart';

class MassPayment extends StatefulWidget {
  @override
  _MassPaymentState createState() => _MassPaymentState();
}

class _MassPaymentState extends State<MassPayment> {
  var format = DateFormat.yMd('pt_BR');

  List<Payment> pagList = [
    Payment(categoria: 'Imposto', valor: 4690.90),
    Payment(categoria: 'Fornecedor', valor: 5842.70),
    Payment(categoria: 'Imposto', valor: 985.75),
    Payment(categoria: 'Imposto', valor: 4690.90),
    Payment(categoria: 'Fornecedor', valor: 27950.50),
  ];

  final List<int> _selectedItems = [];
  int quantitySelected = 0;

  final bool value = false;

  void selectedItem(index) {
    if (_selectedItems.contains(index)) {
      _selectedItems.removeWhere((value) => index == value);
    } else {
      _selectedItems.add(index);
    }

    quantitySelected = _selectedItems.length;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pagList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: pagList[index].selected ? Colors.white38 : Colors.white10,
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.black,
                value: pagList[index].selected,
                onChanged: (bool? newValue) {
                  setState(() {
                    pagList[index].selected = !pagList[index].selected;
                    selectedItem(index);
                  });
                },
              ),
              GenericListViewItem(
                header: pagList[index].categoria,
                value: pagList[index].valor,
                data: format.format(
                  DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    (DateTime.now().day + index),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/*class MassPayment extends StatelessWidget {
  //List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    List<Payment> pagList = [
      Payment(categoria: 'Imposto', valor: 4690.90),
      Payment(categoria: 'Fornecedor', valor: 5842.70),
      Payment(categoria: 'Imposto', valor: 985.75),
      Payment(categoria: 'Imposto', valor: 4690.90),
      Payment(categoria: 'Fornecedor', valor: 27950.50),
    ];



    return ListView.builder(
      itemCount: pagList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: [
              GenericListViewItem(
                  header: pagList[index].categoria,
                  value: pagList[index].valor,
                  data: DateTime.now().toString()),
            ],
          ),
        );
      },
    );
  }
}*/
